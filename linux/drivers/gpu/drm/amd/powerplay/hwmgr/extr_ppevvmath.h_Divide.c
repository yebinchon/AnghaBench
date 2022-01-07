
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int full; } ;
typedef TYPE_1__ fInt ;


 int SHIFT_AMOUNT ;
 TYPE_1__ fDivide (TYPE_1__,TYPE_1__) ;

__attribute__((used)) static fInt Divide (int X, int Y)
{
 fInt A, B, Quotient;

 A.full = X << SHIFT_AMOUNT;
 B.full = Y << SHIFT_AMOUNT;

 Quotient = fDivide(A, B);

 return Quotient;
}
