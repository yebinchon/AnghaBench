
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct dm_disk_bitset {int dirty; int current_bits; } ;
typedef int dm_block_t ;


 unsigned int BITS_PER_ARRAY_ENTRY ;
 int get_array_entry (struct dm_disk_bitset*,int ,unsigned int,int *) ;
 int set_bit (unsigned int,unsigned long*) ;

int dm_bitset_set_bit(struct dm_disk_bitset *info, dm_block_t root,
        uint32_t index, dm_block_t *new_root)
{
 int r;
 unsigned b = index % BITS_PER_ARRAY_ENTRY;

 r = get_array_entry(info, root, index, new_root);
 if (r)
  return r;

 set_bit(b, (unsigned long *) &info->current_bits);
 info->dirty = 1;

 return 0;
}
