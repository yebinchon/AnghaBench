
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_info {int tm; } ;
struct dm_block {int dummy; } ;


 int dm_tm_unlock (int ,struct dm_block*) ;

void unlock_block(struct dm_btree_info *info, struct dm_block *b)
{
 dm_tm_unlock(info->tm, b);
}
