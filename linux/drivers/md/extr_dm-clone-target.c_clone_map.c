
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {struct clone* private; } ;
struct clone {int cmd; int ios_in_flight; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;


 scalar_t__ CM_FAIL ;
 int DM_MAPIO_KILL ;
 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 scalar_t__ READ ;
 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 int atomic_inc (int *) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 unsigned long bio_to_region (struct clone*,struct bio*) ;
 scalar_t__ dm_clone_is_region_hydrated (int ,unsigned long) ;
 int dm_target_offset (struct dm_target*,int ) ;
 scalar_t__ get_clone_mode (struct clone*) ;
 int hydrate_bio_region (struct clone*,struct bio*) ;
 int process_discard_bio (struct clone*,struct bio*) ;
 int remap_and_issue (struct clone*,struct bio*) ;
 int remap_to_dest (struct clone*,struct bio*) ;
 int remap_to_source (struct clone*,struct bio*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int clone_map(struct dm_target *ti, struct bio *bio)
{
 struct clone *clone = ti->private;
 unsigned long region_nr;

 atomic_inc(&clone->ios_in_flight);

 if (unlikely(get_clone_mode(clone) == CM_FAIL))
  return DM_MAPIO_KILL;
 if (bio->bi_opf & REQ_PREFLUSH) {
  remap_and_issue(clone, bio);
  return DM_MAPIO_SUBMITTED;
 }

 bio->bi_iter.bi_sector = dm_target_offset(ti, bio->bi_iter.bi_sector);






 if (bio_op(bio) == REQ_OP_DISCARD) {
  process_discard_bio(clone, bio);
  return DM_MAPIO_SUBMITTED;
 }
 region_nr = bio_to_region(clone, bio);
 if (dm_clone_is_region_hydrated(clone->cmd, region_nr)) {
  remap_and_issue(clone, bio);
  return DM_MAPIO_SUBMITTED;
 } else if (bio_data_dir(bio) == READ) {
  remap_to_source(clone, bio);
  return DM_MAPIO_REMAPPED;
 }

 remap_to_dest(clone, bio);
 hydrate_bio_region(clone, bio);

 return DM_MAPIO_SUBMITTED;
}
