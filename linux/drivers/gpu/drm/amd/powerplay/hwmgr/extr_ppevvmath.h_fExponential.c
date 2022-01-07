
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int fInt ;


 int ConvertToFraction (int) ;
 int Divide (int,int) ;
 int GetScaledFraction (int const,int) ;
 scalar_t__ GreaterThan (int ,int ) ;
 int fAdd (int ,int ) ;
 int fDivide (int ,int ) ;
 int fMultiply (int ,int ) ;
 int fNegate (int ) ;
 int fSubtract (int ,int ) ;

__attribute__((used)) static fInt fExponential(fInt exponent)
{
 uint32_t i;
 bool bNegated = 0;

 fInt fPositiveOne = ConvertToFraction(1);
 fInt fZERO = ConvertToFraction(0);

 fInt lower_bound = Divide(78, 10000);
 fInt solution = fPositiveOne;
 fInt error_term;

 static const uint32_t k_array[11] = {55452, 27726, 13863, 6931, 4055, 2231, 1178, 606, 308, 155, 78};
 static const uint32_t expk_array[11] = {2560000, 160000, 40000, 20000, 15000, 12500, 11250, 10625, 10313, 10156, 10078};

 if (GreaterThan(fZERO, exponent)) {
  exponent = fNegate(exponent);
  bNegated = 1;
 }

 while (GreaterThan(exponent, lower_bound)) {
  for (i = 0; i < 11; i++) {
   if (GreaterThan(exponent, GetScaledFraction(k_array[i], 10000))) {
    exponent = fSubtract(exponent, GetScaledFraction(k_array[i], 10000));
    solution = fMultiply(solution, GetScaledFraction(expk_array[i], 10000));
   }
  }
 }

 error_term = fAdd(fPositiveOne, exponent);

 solution = fMultiply(solution, error_term);

 if (bNegated)
  solution = fDivide(fPositiveOne, solution);

 return solution;
}
