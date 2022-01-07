
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_disk_bitset {int dummy; } ;
typedef int dm_block_t ;


 int dm_bitset_empty (struct dm_disk_bitset*,int *) ;
 int dm_bitset_resize (struct dm_disk_bitset*,int ,int ,unsigned int,int,int *) ;

__attribute__((used)) static int setup_on_disk_bitset(struct dm_disk_bitset *info,
    unsigned nr_bits, dm_block_t *root)
{
 int r;

 r = dm_bitset_empty(info, root);
 if (r)
  return r;

 return dm_bitset_resize(info, *root, 0, nr_bits, 0, root);
}
