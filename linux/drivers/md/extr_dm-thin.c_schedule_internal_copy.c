
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {TYPE_1__* pool; int pool_dev; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef int dm_block_t ;
struct TYPE_2__ {int sectors_per_block; } ;


 int schedule_copy (struct thin_c*,int ,int ,int ,int ,struct dm_bio_prison_cell*,struct bio*,int ) ;

__attribute__((used)) static void schedule_internal_copy(struct thin_c *tc, dm_block_t virt_block,
       dm_block_t data_origin, dm_block_t data_dest,
       struct dm_bio_prison_cell *cell, struct bio *bio)
{
 schedule_copy(tc, virt_block, tc->pool_dev,
        data_origin, data_dest, cell, bio,
        tc->pool->sectors_per_block);
}
