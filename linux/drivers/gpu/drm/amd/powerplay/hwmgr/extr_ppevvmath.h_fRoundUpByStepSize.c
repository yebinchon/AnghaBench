
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int real; scalar_t__ decimal; } ;
struct TYPE_16__ {TYPE_1__ partial; } ;
typedef TYPE_2__ fInt ;


 TYPE_2__ fAdd (TYPE_2__,TYPE_2__) ;
 TYPE_2__ fDivide (TYPE_2__,TYPE_2__) ;
 TYPE_2__ fMultiply (TYPE_2__,TYPE_2__) ;

__attribute__((used)) static fInt fRoundUpByStepSize(fInt A, fInt fStepSize, bool error_term)
{
 fInt solution;

 solution = fDivide(A, fStepSize);
 solution.partial.decimal = 0;

 if (error_term)
  solution.partial.real += 1;

 solution = fMultiply(solution, fStepSize);
 solution = fAdd(solution, fStepSize);

 return solution;
}
