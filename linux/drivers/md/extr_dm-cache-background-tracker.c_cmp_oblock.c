
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dm_oblock_t ;


 scalar_t__ from_oblock (int ) ;

__attribute__((used)) static int cmp_oblock(dm_oblock_t lhs, dm_oblock_t rhs)
{
 if (from_oblock(lhs) < from_oblock(rhs))
  return -1;

 if (from_oblock(rhs) < from_oblock(lhs))
  return 1;

 return 0;
}
