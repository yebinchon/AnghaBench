
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_btree_info {int dummy; } ;
typedef int dm_block_t ;


 int dm_btree_find_key (struct dm_btree_info*,int ,int,int *) ;

int dm_btree_find_highest_key(struct dm_btree_info *info, dm_block_t root,
         uint64_t *result_keys)
{
 return dm_btree_find_key(info, root, 1, result_keys);
}
