
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int full; } ;
typedef TYPE_1__ fInt ;


 TYPE_1__ ConvertToFraction (int) ;
 int MAX ;
 TYPE_1__ fDivide (TYPE_1__,TYPE_1__) ;
 int uPow (int,int) ;

__attribute__((used)) static fInt GetScaledFraction(int X, int factor)
{
 int times_shifted, factor_shifted;
 bool bNEGATED;
 fInt fValue;

 times_shifted = 0;
 factor_shifted = 0;
 bNEGATED = 0;

 if (X < 0) {
  X = -1*X;
  bNEGATED = 1;
 }

 if (factor < 0) {
  factor = -1*factor;
  bNEGATED = !bNEGATED;
 }

 if ((X > MAX) || factor > MAX) {
  if ((X/factor) <= MAX) {
   while (X > MAX) {
    X = X >> 1;
    times_shifted++;
   }

   while (factor > MAX) {
    factor = factor >> 1;
    factor_shifted++;
   }
  } else {
   fValue.full = 0;
   return fValue;
  }
 }

 if (factor == 1)
  return ConvertToFraction(X);

 fValue = fDivide(ConvertToFraction(X * uPow(-1, bNEGATED)), ConvertToFraction(factor));

 fValue.full = fValue.full << times_shifted;
 fValue.full = fValue.full >> factor_shifted;

 return fValue;
}
