
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int full; } ;
typedef TYPE_1__ fInt ;


 int GetReal (TYPE_1__) ;
 scalar_t__ PRECISION ;
 TYPE_1__ fAdd (TYPE_1__,TYPE_1__) ;
 int uGetScaledDecimal (TYPE_1__) ;
 int uPow (int,scalar_t__) ;

__attribute__((used)) static int ConvertBackToInteger (fInt A)
{
 fInt fullNumber, scaledDecimal, scaledReal;

 scaledReal.full = GetReal(A) * uPow(10, PRECISION-1);

 scaledDecimal.full = uGetScaledDecimal(A);

 fullNumber = fAdd(scaledDecimal,scaledReal);

 return fullNumber.full;
}
