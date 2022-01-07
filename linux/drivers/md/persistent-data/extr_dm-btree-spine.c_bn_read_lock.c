
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_info {int tm; } ;
struct dm_block {int dummy; } ;
typedef int dm_block_t ;


 int btree_node_validator ;
 int dm_tm_read_lock (int ,int ,int *,struct dm_block**) ;

int bn_read_lock(struct dm_btree_info *info, dm_block_t b,
   struct dm_block **result)
{
 return dm_tm_read_lock(info->tm, b, &btree_node_validator, result);
}
