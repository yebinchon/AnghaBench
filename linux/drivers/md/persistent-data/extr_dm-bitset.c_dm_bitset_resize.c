
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_disk_bitset {int array_info; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int BITS_PER_ARRAY_ENTRY ;
 int __dm_bless_for_disk (int *) ;
 int cpu_to_le64 (int ) ;
 int dm_array_resize (int *,int ,int ,int ,int *,int *) ;
 int dm_div_up (int ,int ) ;

int dm_bitset_resize(struct dm_disk_bitset *info, dm_block_t root,
       uint32_t old_nr_entries, uint32_t new_nr_entries,
       bool default_value, dm_block_t *new_root)
{
 uint32_t old_blocks = dm_div_up(old_nr_entries, BITS_PER_ARRAY_ENTRY);
 uint32_t new_blocks = dm_div_up(new_nr_entries, BITS_PER_ARRAY_ENTRY);
 __le64 value = default_value ? cpu_to_le64(~0) : cpu_to_le64(0);

 __dm_bless_for_disk(&value);
 return dm_array_resize(&info->array_info, root, old_blocks, new_blocks,
          &value, new_root);
}
