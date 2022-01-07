
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int dummy; } ;
struct bio_list {struct bio* head; } ;
struct bio {int bi_opf; struct bio* bi_next; } ;


 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 scalar_t__ bio_op (struct bio*) ;
 int dm_rh_bio_to_region (struct dm_region_hash*,struct bio*) ;
 int rh_inc (struct dm_region_hash*,int ) ;

void dm_rh_inc_pending(struct dm_region_hash *rh, struct bio_list *bios)
{
 struct bio *bio;

 for (bio = bios->head; bio; bio = bio->bi_next) {
  if (bio->bi_opf & REQ_PREFLUSH || bio_op(bio) == REQ_OP_DISCARD)
   continue;
  rh_inc(rh, dm_rh_bio_to_region(rh, bio));
 }
}
