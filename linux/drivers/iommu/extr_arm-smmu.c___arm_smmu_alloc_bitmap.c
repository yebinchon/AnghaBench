
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int find_next_zero_bit (unsigned long*,int,int) ;
 scalar_t__ test_and_set_bit (int,unsigned long*) ;

__attribute__((used)) static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
{
 int idx;

 do {
  idx = find_next_zero_bit(map, end, start);
  if (idx == end)
   return -ENOSPC;
 } while (test_and_set_bit(idx, map));

 return idx;
}
