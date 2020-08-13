require "pry"
class School
attr_accessor :roster, :name, :grade
def initialize(arg)
@roster = {}
end


def add_student(name, grade)
  @roster[grade] ||= []
# if @roster[grade]
  @roster[grade].push(name)
# else
#   @roster[grade] = []
#   @roster[grade].push(name)
# end
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |key, value|
    value.sort!
end
end

end
