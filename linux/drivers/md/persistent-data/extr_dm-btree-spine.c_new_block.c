
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_info {int tm; } ;
struct dm_block {int dummy; } ;


 int btree_node_validator ;
 int dm_tm_new_block (int ,int *,struct dm_block**) ;

int new_block(struct dm_btree_info *info, struct dm_block **result)
{
 return dm_tm_new_block(info->tm, &btree_node_validator, result);
}
