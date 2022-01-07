
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fInt ;


 int ConvertToFraction (int) ;
 scalar_t__ GreaterThan (int ,int ) ;
 int fAdd (int ,int ) ;
 int fDivide (int ,int ) ;
 int fGetSquare (int ) ;
 int fMultiply (int ,int ) ;
 int fNegate (int ) ;
 int fSqrt (int ) ;
 int fSubtract (int ,int ) ;

__attribute__((used)) static void SolveQuadracticEqn(fInt A, fInt B, fInt C, fInt Roots[])
{
 fInt *pRoots = &Roots[0];
 fInt temp, root_first, root_second;
 fInt f_CONSTANT10, f_CONSTANT100;

 f_CONSTANT100 = ConvertToFraction(100);
 f_CONSTANT10 = ConvertToFraction(10);

 while(GreaterThan(A, f_CONSTANT100) || GreaterThan(B, f_CONSTANT100) || GreaterThan(C, f_CONSTANT100)) {
  A = fDivide(A, f_CONSTANT10);
  B = fDivide(B, f_CONSTANT10);
  C = fDivide(C, f_CONSTANT10);
 }

 temp = fMultiply(ConvertToFraction(4), A);
 temp = fMultiply(temp, C);
 temp = fSubtract(fGetSquare(B), temp);
 temp = fSqrt(temp);

 root_first = fSubtract(fNegate(B), temp);
 root_second = fAdd(fNegate(B), temp);

 root_first = fDivide(root_first, ConvertToFraction(2));
 root_first = fDivide(root_first, A);

 root_second = fDivide(root_second, ConvertToFraction(2));
 root_second = fDivide(root_second, A);

 *(pRoots + 0) = root_first;
 *(pRoots + 1) = root_second;
}
