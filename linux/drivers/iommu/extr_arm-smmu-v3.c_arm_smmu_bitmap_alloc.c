
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int find_first_zero_bit (unsigned long*,int) ;
 scalar_t__ test_and_set_bit (int,unsigned long*) ;

__attribute__((used)) static int arm_smmu_bitmap_alloc(unsigned long *map, int span)
{
 int idx, size = 1 << span;

 do {
  idx = find_first_zero_bit(map, size);
  if (idx == size)
   return -ENOSPC;
 } while (test_and_set_bit(idx, map));

 return idx;
}
