
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

__attribute__((used)) static fInt fNaturalLog(fInt value)
{
 uint32_t i;
 fInt upper_bound = Divide(8, 1000);
 fInt fNegativeOne = ConvertToFraction(-1);
 fInt solution = ConvertToFraction(0);
 fInt error_term;

 static const uint32_t k_array[10] = {160000, 40000, 20000, 15000, 12500, 11250, 10625, 10313, 10156, 10078};
 static const uint32_t logk_array[10] = {27726, 13863, 6931, 4055, 2231, 1178, 606, 308, 155, 78};

 while (GreaterThan(fAdd(value, fNegativeOne), upper_bound)) {
  for (i = 0; i < 10; i++) {
   if (GreaterThan(value, GetScaledFraction(k_array[i], 10000))) {
    value = fDivide(value, GetScaledFraction(k_array[i], 10000));
    solution = fAdd(solution, GetScaledFraction(logk_array[i], 10000));
   }
  }
 }

 error_term = fAdd(fNegativeOne, value);

 return (fAdd(solution, error_term));
}
