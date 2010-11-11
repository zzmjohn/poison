module Poison
  module Syntax
    class Expression < Node
      attr_accessor :expression

      def initialize(expression)
        @expression = expression
      end

      def to_sexp
        [:expr].concat @expression.map { |e| e.to_sexp }
      end
    end
  end
end