# @param {Integer[]} answers
# @return {Integer}
def num_rabbits(answers)
  result = 0
  answers.tally.each do |same_color, freq|
    same_color += 1
    result += (freq.to_f / same_color).ceil * same_color
  end
  result
end