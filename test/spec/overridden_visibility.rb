require_relative 'spec_init'

describe "Initializer Generated with Overridden Default Visibility" do
  example = Initializer::Controls::Visibility::Override.example

  specify "Default visibility is reader" do
    assert(example.class.writer?(:some_attr))
    assert(example.class.accessor?(:some_other_attr))
    assert(example.class.writer?(:another_attr))
  end

  specify "Attributes values are set by the initializer" do
    assert(example.initialized?)
  end
end