
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sector_t ;



__attribute__((used)) static int overlaps(sector_t s1, sector_t l1, sector_t s2, sector_t l2)
{

 if (s1+l1 <= s2)
  return 0;
 if (s2+l2 <= s1)
  return 0;
 return 1;
}
