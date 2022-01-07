
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_array_info {int btree_info; } ;
typedef int dm_block_t ;


 int dm_btree_del (int *,int ) ;

int dm_array_del(struct dm_array_info *info, dm_block_t root)
{
 return dm_btree_del(&info->btree_info, root);
}
