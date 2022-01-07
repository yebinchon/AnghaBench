
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_block {int dummy; } ;
struct TYPE_2__ {int tm; } ;
struct dm_array_info {TYPE_1__ btree_info; } ;
struct array_block {int dummy; } ;
typedef int dm_block_t ;


 int array_validator ;
 struct array_block* dm_block_data (struct dm_block*) ;
 int dm_tm_read_lock (int ,int ,int *,struct dm_block**) ;

__attribute__((used)) static int get_ablock(struct dm_array_info *info, dm_block_t b,
        struct dm_block **block, struct array_block **ab)
{
 int r;

 r = dm_tm_read_lock(info->btree_info.tm, b, &array_validator, block);
 if (r)
  return r;

 *ab = dm_block_data(*block);
 return 0;
}
