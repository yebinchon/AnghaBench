
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_disk_bitset {int current_index_set; int dirty; int current_index; int current_bits; int array_info; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int dm_array_get_value (int *,int ,int ,int *) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int read_bits(struct dm_disk_bitset *info, dm_block_t root,
       uint32_t array_index)
{
 int r;
 __le64 value;

 r = dm_array_get_value(&info->array_info, root, array_index, &value);
 if (r)
  return r;

 info->current_bits = le64_to_cpu(value);
 info->current_index_set = 1;
 info->current_index = array_index;
 info->dirty = 0;

 return 0;
}
