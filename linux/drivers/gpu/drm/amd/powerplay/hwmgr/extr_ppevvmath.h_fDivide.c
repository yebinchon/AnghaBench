
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int full; } ;
typedef TYPE_1__ fInt ;


 TYPE_1__ ConvertToFraction (int ) ;
 scalar_t__ Equal (TYPE_1__,TYPE_1__) ;
 int div64_s64 (int,int) ;

__attribute__((used)) static fInt fDivide (fInt X, fInt Y)
{
 fInt fZERO, fQuotient;
 int64_t longlongX, longlongY;

 fZERO = ConvertToFraction(0);

 if (Equal(Y, fZERO))
  return fZERO;

 longlongX = (int64_t)X.full;
 longlongY = (int64_t)Y.full;

 longlongX = longlongX << 16;

 div64_s64(longlongX, longlongY);

 fQuotient.full = (int)longlongX;
 return fQuotient;
}
