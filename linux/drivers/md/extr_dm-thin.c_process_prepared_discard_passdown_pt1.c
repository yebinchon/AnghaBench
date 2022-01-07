
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {struct pool* pool; int td; } ;
struct pool {int pool_md; int mapping_pool; int pmd; } ;
struct dm_thin_new_mapping {scalar_t__ data_block; scalar_t__ maybe_shared; int cell; int bio; scalar_t__ virt_end; scalar_t__ virt_begin; struct thin_c* tc; } ;
struct discard_op {int dummy; } ;
struct bio {struct dm_thin_new_mapping* bi_private; int bi_end_io; } ;
typedef scalar_t__ dm_block_t ;


 int DMWARN (char*,int ) ;
 int GFP_NOIO ;
 int begin_discard (struct discard_op*,struct thin_c*,struct bio*) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_io_error (int ) ;
 int cell_defer_no_holder (struct thin_c*,int ) ;
 int dm_device_name (int ) ;
 int dm_pool_inc_data_range (int ,scalar_t__,scalar_t__) ;
 int dm_thin_remove_range (int ,scalar_t__,scalar_t__) ;
 int end_discard (struct discard_op*,int) ;
 int issue_discard (struct discard_op*,scalar_t__,scalar_t__) ;
 int mempool_free (struct dm_thin_new_mapping*,int *) ;
 int metadata_operation_failed (struct pool*,char*,int) ;
 int passdown_double_checking_shared_status (struct dm_thin_new_mapping*,struct bio*) ;
 int passdown_endio ;
 int queue_passdown_pt2 (struct dm_thin_new_mapping*) ;

__attribute__((used)) static void process_prepared_discard_passdown_pt1(struct dm_thin_new_mapping *m)
{
 int r;
 struct thin_c *tc = m->tc;
 struct pool *pool = tc->pool;
 struct bio *discard_parent;
 dm_block_t data_end = m->data_block + (m->virt_end - m->virt_begin);






 r = dm_thin_remove_range(tc->td, m->virt_begin, m->virt_end);
 if (r) {
  metadata_operation_failed(pool, "dm_thin_remove_range", r);
  bio_io_error(m->bio);
  cell_defer_no_holder(tc, m->cell);
  mempool_free(m, &pool->mapping_pool);
  return;
 }





 r = dm_pool_inc_data_range(pool->pmd, m->data_block, data_end);
 if (r) {
  metadata_operation_failed(pool, "dm_pool_inc_data_range", r);
  bio_io_error(m->bio);
  cell_defer_no_holder(tc, m->cell);
  mempool_free(m, &pool->mapping_pool);
  return;
 }

 discard_parent = bio_alloc(GFP_NOIO, 1);
 if (!discard_parent) {
  DMWARN("%s: unable to allocate top level discard bio for passdown. Skipping passdown.",
         dm_device_name(tc->pool->pool_md));
  queue_passdown_pt2(m);

 } else {
  discard_parent->bi_end_io = passdown_endio;
  discard_parent->bi_private = m;

  if (m->maybe_shared)
   passdown_double_checking_shared_status(m, discard_parent);
  else {
   struct discard_op op;

   begin_discard(&op, tc, discard_parent);
   r = issue_discard(&op, m->data_block, data_end);
   end_discard(&op, r);
  }
 }
}
