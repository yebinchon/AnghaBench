
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_bit (int,unsigned long*) ;

__attribute__((used)) static void arm_smmu_bitmap_free(unsigned long *map, int idx)
{
 clear_bit(idx, map);
}
