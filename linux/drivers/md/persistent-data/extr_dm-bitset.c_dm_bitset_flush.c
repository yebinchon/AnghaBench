
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_disk_bitset {int current_index_set; int dirty; int current_index; int array_info; int current_bits; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int __dm_bless_for_disk (int *) ;
 int cpu_to_le64 (int ) ;
 int dm_array_set_value (int *,int ,int ,int *,int *) ;

int dm_bitset_flush(struct dm_disk_bitset *info, dm_block_t root,
      dm_block_t *new_root)
{
 int r;
 __le64 value;

 if (!info->current_index_set || !info->dirty)
  return 0;

 value = cpu_to_le64(info->current_bits);

 __dm_bless_for_disk(&value);
 r = dm_array_set_value(&info->array_info, root, info->current_index,
          &value, new_root);
 if (r)
  return r;

 info->current_index_set = 0;
 info->dirty = 0;

 return 0;
}
