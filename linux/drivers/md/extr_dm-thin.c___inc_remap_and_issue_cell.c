
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct remap_info {int issue_bios; TYPE_1__* tc; int defer_bios; } ;
struct dm_bio_prison_cell {int bios; } ;
struct bio {int bi_opf; } ;
struct TYPE_2__ {int pool; } ;


 scalar_t__ REQ_OP_DISCARD ;
 int bio_list_add (int *,struct bio*) ;
 struct bio* bio_list_pop (int *) ;
 scalar_t__ bio_op (struct bio*) ;
 int inc_all_io_entry (int ,struct bio*) ;
 scalar_t__ op_is_flush (int ) ;

__attribute__((used)) static void __inc_remap_and_issue_cell(void *context,
           struct dm_bio_prison_cell *cell)
{
 struct remap_info *info = context;
 struct bio *bio;

 while ((bio = bio_list_pop(&cell->bios))) {
  if (op_is_flush(bio->bi_opf) || bio_op(bio) == REQ_OP_DISCARD)
   bio_list_add(&info->defer_bios, bio);
  else {
   inc_all_io_entry(info->tc->pool, bio);






   bio_list_add(&info->issue_bios, bio);
  }
 }
}
