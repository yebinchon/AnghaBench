
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct dm_disk_bitset {int current_bits; } ;
typedef int dm_block_t ;


 unsigned int BITS_PER_ARRAY_ENTRY ;
 int get_array_entry (struct dm_disk_bitset*,int ,unsigned int,int *) ;
 int test_bit (unsigned int,unsigned long*) ;

int dm_bitset_test_bit(struct dm_disk_bitset *info, dm_block_t root,
         uint32_t index, dm_block_t *new_root, bool *result)
{
 int r;
 unsigned b = index % BITS_PER_ARRAY_ENTRY;

 r = get_array_entry(info, root, index, new_root);
 if (r)
  return r;

 *result = test_bit(b, (unsigned long *) &info->current_bits);
 return 0;
}
