
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ full; } ;
typedef TYPE_1__ fInt ;



__attribute__((used)) static bool Equal(fInt A, fInt B)
{
 if (A.full == B.full)
  return 1;
 else
  return 0;
}
