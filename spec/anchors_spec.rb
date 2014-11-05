require "spec_helper"

describe "regex_with_at_least_one_line_that_has_exactly_one_word_in_it" do
  it "matches 'one\ntwo words'" do
    expect(regex_with_at_least_one_line_that_has_exactly_one_word_in_it).to match("one\ntwo words")
  end

  it "does not match 'A1 Sauce'" do
    expect(regex_with_at_least_one_line_that_has_exactly_one_word_in_it).not_to match("A1 Sauce")
  end

  it "does not match the empty string" do
    expect(regex_with_at_least_one_line_that_has_exactly_one_word_in_it).not_to match("")
  end
end

describe "regex_matching_a_string_starting_with_hello" do
  it "matches 'hello'" do
    expect(regex_matching_a_string_starting_with_hello).to match "hello"
  end

  it "matches 'hello there'" do
    expect(regex_matching_a_string_starting_with_hello).to match "hello there"
  end

  it "does not match 'oh hello'" do
    expect(regex_matching_a_string_starting_with_hello).not_to match "oh hello"
  end

  it "does not match 'oh\nhello'" do
    expect(regex_matching_a_string_starting_with_hello).not_to match "oh\nhello"
  end
end

describe "regex_matching_a_string_ending_with_goodbye" do
  it "matches 'goodbye'" do
    expect(regex_matching_a_string_ending_with_goodbye).to match "goodbye"
  end

  it "matches 'well, goodbye'" do
    expect(regex_matching_a_string_ending_with_goodbye).to match "well, goodbye"
  end

  it "does not match 'goodbye to  you'" do
    expect(regex_matching_a_string_ending_with_goodbye).not_to match "goodbye to you"
  end

  it "does not match 'goodbye\nfor now'" do
    expect(regex_matching_a_string_ending_with_goodbye).not_to match "goodbye\nfor now"
  end
end

describe "regex_matching_greeting_exactly" do
  it "matches 'greeting'" do
    expect(regex_matching_greeting_exactly).to match "greeting"
  end

  it "does not match 'greetings'" do
    expect(regex_matching_greeting_exactly).not_to match "greetings"
  end

  it "does not match 'a greeting'" do
    expect(regex_matching_greeting_exactly).not_to match "a greeting"
  end

  it "does not match 'a\ngreeting'" do
    expect(regex_matching_greeting_exactly).not_to match "a\ngreeting"
  end
end

describe "regex_matching_exactly_one_word" do
  it "matches 'hello'" do
    expect(regex_matching_exactly_one_word).to match "hello"
  end

  it "matches 'A1foo_username'" do
    expect(regex_matching_exactly_one_word).to match "A1foo_username"
  end

  it "does not match 'hello there'" do
    expect(regex_matching_exactly_one_word).not_to match "hello there"
  end

  it "does not match 'hello\nthere'" do
    expect(regex_matching_exactly_one_word).not_to match "hello\nthere"
  end
end

describe "regex_matching_the_word_and" do
  it "matches 'and'" do
    expect(regex_matching_the_word_and).to match "and"
  end

  it "does not match 'demand'" do
    expect(regex_matching_the_word_and).not_to match "demand"
  end
end
