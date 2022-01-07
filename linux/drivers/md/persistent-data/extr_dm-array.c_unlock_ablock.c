
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_block {int dummy; } ;
struct TYPE_2__ {int tm; } ;
struct dm_array_info {TYPE_1__ btree_info; } ;


 int dm_tm_unlock (int ,struct dm_block*) ;

__attribute__((used)) static void unlock_ablock(struct dm_array_info *info, struct dm_block *block)
{
 dm_tm_unlock(info->btree_info.tm, block);
}
