
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {int real; } ;
struct TYPE_23__ {int full; TYPE_1__ partial; } ;
typedef TYPE_2__ fInt ;


 int ConvertBackToInteger (TYPE_2__) ;
 TYPE_2__ ConvertToFraction (int) ;
 scalar_t__ Equal (TYPE_2__,TYPE_2__) ;
 scalar_t__ GreaterThan (TYPE_2__,TYPE_2__) ;
 TYPE_2__ fDivide (TYPE_2__,TYPE_2__) ;
 TYPE_2__ fGetSquare (TYPE_2__) ;
 TYPE_2__ fMultiply (TYPE_2__,TYPE_2__) ;
 TYPE_2__ fSubtract (TYPE_2__,TYPE_2__) ;
 scalar_t__ uAbs (int) ;

__attribute__((used)) static fInt fSqrt(fInt num)
{
 fInt F_divide_Fprime, Fprime;
 fInt test;
 fInt twoShifted;
 int seed, counter, error;
 fInt x_new, x_old, C, y;

 fInt fZERO = ConvertToFraction(0);



 if (GreaterThan(fZERO, num) || Equal(fZERO, num))
  return fZERO;

 C = num;

 if (num.partial.real > 3000)
  seed = 60;
 else if (num.partial.real > 1000)
  seed = 30;
 else if (num.partial.real > 100)
  seed = 10;
 else
  seed = 2;

 counter = 0;

 if (Equal(num, fZERO))
  return fZERO;

 twoShifted = ConvertToFraction(2);
 x_new = ConvertToFraction(seed);

 do {
  counter++;

  x_old.full = x_new.full;

  test = fGetSquare(x_old);
  y = fSubtract(test, C);

  Fprime = fMultiply(twoShifted, x_old);
  F_divide_Fprime = fDivide(y, Fprime);

  x_new = fSubtract(x_old, F_divide_Fprime);

  error = ConvertBackToInteger(x_new) - ConvertBackToInteger(x_old);

  if (counter > 20)
   return x_new;

 } while (uAbs(error) > 0);

 return (x_new);
}
