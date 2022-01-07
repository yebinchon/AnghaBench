
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct remap_info {int issue_bios; TYPE_1__* tc; int defer_bios; } ;
struct dm_thin_endio_hook {int shared_read_entry; } ;
struct dm_bio_prison_cell {int bios; } ;
struct bio {int bi_opf; } ;
struct TYPE_4__ {int shared_read_ds; } ;
struct TYPE_3__ {TYPE_2__* pool; } ;


 scalar_t__ REQ_OP_DISCARD ;
 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 struct bio* bio_list_pop (int *) ;
 scalar_t__ bio_op (struct bio*) ;
 int dm_deferred_entry_inc (int ) ;
 struct dm_thin_endio_hook* dm_per_bio_data (struct bio*,int) ;
 int inc_all_io_entry (TYPE_2__*,struct bio*) ;
 scalar_t__ op_is_flush (int ) ;

__attribute__((used)) static void __remap_and_issue_shared_cell(void *context,
       struct dm_bio_prison_cell *cell)
{
 struct remap_info *info = context;
 struct bio *bio;

 while ((bio = bio_list_pop(&cell->bios))) {
  if (bio_data_dir(bio) == WRITE || op_is_flush(bio->bi_opf) ||
      bio_op(bio) == REQ_OP_DISCARD)
   bio_list_add(&info->defer_bios, bio);
  else {
   struct dm_thin_endio_hook *h = dm_per_bio_data(bio, sizeof(struct dm_thin_endio_hook));

   h->shared_read_entry = dm_deferred_entry_inc(info->tc->pool->shared_read_ds);
   inc_all_io_entry(info->tc->pool, bio);
   bio_list_add(&info->issue_bios, bio);
  }
 }
}
