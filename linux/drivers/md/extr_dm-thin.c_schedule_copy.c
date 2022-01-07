
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thin_c {TYPE_1__* pool_dev; struct pool* pool; } ;
struct TYPE_4__ {scalar_t__ zero_new_blocks; } ;
struct pool {int sectors_per_block; TYPE_2__ pf; int copier; int shared_read_ds; } ;
struct dm_thin_new_mapping {int virt_begin; int virt_end; int data_block; int prepare_actions; int list; struct dm_bio_prison_cell* cell; struct thin_c* tc; } ;
struct dm_io_region {int sector; int count; int bdev; } ;
struct dm_dev {int bdev; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef int sector_t ;
typedef int dm_block_t ;
struct TYPE_3__ {int bdev; } ;


 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int complete_mapping_preparation (struct dm_thin_new_mapping*) ;
 int copy_complete ;
 int dm_deferred_set_add_work (int ,int *) ;
 int dm_kcopyd_copy (int ,struct dm_io_region*,int,struct dm_io_region*,int ,int ,struct dm_thin_new_mapping*) ;
 struct dm_thin_new_mapping* get_next_mapping (struct pool*) ;
 scalar_t__ io_overwrites_block (struct pool*,struct bio*) ;
 int ll_zero (struct thin_c*,struct dm_thin_new_mapping*,int,int) ;
 int remap_and_issue_overwrite (struct thin_c*,struct bio*,int,struct dm_thin_new_mapping*) ;

__attribute__((used)) static void schedule_copy(struct thin_c *tc, dm_block_t virt_block,
     struct dm_dev *origin, dm_block_t data_origin,
     dm_block_t data_dest,
     struct dm_bio_prison_cell *cell, struct bio *bio,
     sector_t len)
{
 struct pool *pool = tc->pool;
 struct dm_thin_new_mapping *m = get_next_mapping(pool);

 m->tc = tc;
 m->virt_begin = virt_block;
 m->virt_end = virt_block + 1u;
 m->data_block = data_dest;
 m->cell = cell;






 atomic_set(&m->prepare_actions, 3);

 if (!dm_deferred_set_add_work(pool->shared_read_ds, &m->list))
  complete_mapping_preparation(m);







 if (io_overwrites_block(pool, bio))
  remap_and_issue_overwrite(tc, bio, data_dest, m);
 else {
  struct dm_io_region from, to;

  from.bdev = origin->bdev;
  from.sector = data_origin * pool->sectors_per_block;
  from.count = len;

  to.bdev = tc->pool_dev->bdev;
  to.sector = data_dest * pool->sectors_per_block;
  to.count = len;

  dm_kcopyd_copy(pool->copier, &from, 1, &to,
          0, copy_complete, m);




  if (len < pool->sectors_per_block && pool->pf.zero_new_blocks) {
   atomic_inc(&m->prepare_actions);
   ll_zero(tc, m,
    data_dest * pool->sectors_per_block + len,
    (data_dest + 1) * pool->sectors_per_block);
  }
 }

 complete_mapping_preparation(m);
}
