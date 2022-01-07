
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_disk_bitset {int array_info; } ;
typedef int dm_block_t ;


 int dm_array_empty (int *,int *) ;

int dm_bitset_empty(struct dm_disk_bitset *info, dm_block_t *root)
{
 return dm_array_empty(&info->array_info, root);
}
