
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ full; } ;
typedef TYPE_1__ fInt ;



__attribute__((used)) static fInt fAdd (fInt X, fInt Y)
{
 fInt Sum;

 Sum.full = X.full + Y.full;

 return Sum;
}
