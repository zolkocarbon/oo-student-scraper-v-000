class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url
  @@all = []

  def self.all
    @@all
  end

  def initialize(student_hash)
    #use metaprogramming
    #https://learn.co/tracks/full-stack-web-development-v3/object-oriented-ruby/metaprogramming/mass-assignment-and-metaprogramming
    student_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each{|student_hash| self.new(student_hash)}
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each {|key, value| self.send(("#{key}="), value)}
  end

end
