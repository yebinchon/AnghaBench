
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thin_c {struct pool* pool; int td; } ;
struct pool {int mapping_pool; } ;
struct dm_thin_new_mapping {int list; int data_block; TYPE_1__* cell; int virt_begin; scalar_t__ status; struct bio* bio; struct thin_c* tc; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int holder; } ;


 int cell_error (struct pool*,TYPE_1__*) ;
 int complete_overwrite_bio (struct thin_c*,struct bio*) ;
 int dm_thin_insert_block (int ,int ,int ) ;
 int inc_all_io_entry (struct pool*,int ) ;
 int inc_remap_and_issue_cell (struct thin_c*,TYPE_1__*,int ) ;
 int list_del (int *) ;
 int mempool_free (struct dm_thin_new_mapping*,int *) ;
 int metadata_operation_failed (struct pool*,char*,int) ;
 int remap_and_issue (struct thin_c*,int ,int ) ;

__attribute__((used)) static void process_prepared_mapping(struct dm_thin_new_mapping *m)
{
 struct thin_c *tc = m->tc;
 struct pool *pool = tc->pool;
 struct bio *bio = m->bio;
 int r;

 if (m->status) {
  cell_error(pool, m->cell);
  goto out;
 }






 r = dm_thin_insert_block(tc->td, m->virt_begin, m->data_block);
 if (r) {
  metadata_operation_failed(pool, "dm_thin_insert_block", r);
  cell_error(pool, m->cell);
  goto out;
 }







 if (bio) {
  inc_remap_and_issue_cell(tc, m->cell, m->data_block);
  complete_overwrite_bio(tc, bio);
 } else {
  inc_all_io_entry(tc->pool, m->cell->holder);
  remap_and_issue(tc, m->cell->holder, m->data_block);
  inc_remap_and_issue_cell(tc, m->cell, m->data_block);
 }

out:
 list_del(&m->list);
 mempool_free(m, &pool->mapping_pool);
}
