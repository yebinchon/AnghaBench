
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bitmap_free (unsigned long*) ;

__attribute__((used)) static void arm_smmu_cmdq_free_bitmap(void *data)
{
 unsigned long *bitmap = data;
 bitmap_free(bitmap);
}
