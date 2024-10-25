# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides = { :a => a, :b => b, :c => c }
  raise TriangleError, "Triangles cannot have negative length sides" if sides.values.min < 0
  raise TriangleError, "Triangles cannot have 0 length sides" if sides.values.include?(0)
  raise TriangleError, "The sum of any two sides should be more than the third" if sides.values.sort[0..1].sum <= sides.values.max
  result = :equilateral if sides.values.uniq.count == 1
  result = :isosceles if sides.values.uniq.count == 2
  result = :scalene if sides.values.uniq.count == 3
  result
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
