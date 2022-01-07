
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_block {int dummy; } ;
struct TYPE_2__ {int tm; } ;
struct dm_array_info {TYPE_1__ btree_info; } ;
typedef scalar_t__ dm_block_t ;


 scalar_t__ dm_block_location (struct dm_block*) ;
 int dm_tm_inc (int ,scalar_t__) ;
 int insert_ablock (struct dm_array_info*,unsigned int,struct dm_block*,scalar_t__*) ;

__attribute__((used)) static int __reinsert_ablock(struct dm_array_info *info, unsigned index,
        struct dm_block *block, dm_block_t b,
        dm_block_t *root)
{
 int r = 0;

 if (dm_block_location(block) != b) {






  dm_tm_inc(info->btree_info.tm, b);
  r = insert_ablock(info, index, block, root);
 }

 return r;
}
