
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fInt ;


 int ConvertToFraction (int) ;
 int fMultiply (int ,int ) ;

__attribute__((used)) static fInt fNegate(fInt X)
{
 fInt CONSTANT_NEGONE = ConvertToFraction(-1);
 return (fMultiply(X, CONSTANT_NEGONE));
}
