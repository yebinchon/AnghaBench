
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {scalar_t__ first_merging_chunk; scalar_t__ num_merging_chunks; int lock; TYPE_3__* origin; int bios_queued_during_merge; int complete; int valid; int store; TYPE_1__* cow; } ;
struct dm_exception {int dummy; } ;
struct TYPE_5__ {int bi_sector; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; } ;
typedef scalar_t__ chunk_t ;
struct TYPE_6__ {int bdev; } ;
struct TYPE_4__ {int bdev; } ;


 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_endio (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int dm_bio_get_target_bio_nr (struct bio*) ;
 struct dm_exception* dm_lookup_exception (int *,scalar_t__) ;
 int do_origin (TYPE_3__*,struct bio*,int) ;
 int down_write (int *) ;
 int init_tracked_chunk (struct bio*) ;
 int remap_exception (struct dm_snapshot*,struct dm_exception*,struct bio*,scalar_t__) ;
 scalar_t__ sector_to_chunk (int ,int ) ;
 int track_chunk (struct dm_snapshot*,struct bio*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

__attribute__((used)) static int snapshot_merge_map(struct dm_target *ti, struct bio *bio)
{
 struct dm_exception *e;
 struct dm_snapshot *s = ti->private;
 int r = DM_MAPIO_REMAPPED;
 chunk_t chunk;

 init_tracked_chunk(bio);

 if (bio->bi_opf & REQ_PREFLUSH) {
  if (!dm_bio_get_target_bio_nr(bio))
   bio_set_dev(bio, s->origin->bdev);
  else
   bio_set_dev(bio, s->cow->bdev);
  return DM_MAPIO_REMAPPED;
 }

 if (unlikely(bio_op(bio) == REQ_OP_DISCARD)) {

  bio_endio(bio);
  return DM_MAPIO_SUBMITTED;
 }

 chunk = sector_to_chunk(s->store, bio->bi_iter.bi_sector);

 down_write(&s->lock);


 if (!s->valid)
  goto redirect_to_origin;


 e = dm_lookup_exception(&s->complete, chunk);
 if (e) {

  if (bio_data_dir(bio) == WRITE &&
      chunk >= s->first_merging_chunk &&
      chunk < (s->first_merging_chunk +
        s->num_merging_chunks)) {
   bio_set_dev(bio, s->origin->bdev);
   bio_list_add(&s->bios_queued_during_merge, bio);
   r = DM_MAPIO_SUBMITTED;
   goto out_unlock;
  }

  remap_exception(s, e, bio, chunk);

  if (bio_data_dir(bio) == WRITE)
   track_chunk(s, bio, chunk);
  goto out_unlock;
 }

redirect_to_origin:
 bio_set_dev(bio, s->origin->bdev);

 if (bio_data_dir(bio) == WRITE) {
  up_write(&s->lock);
  return do_origin(s->origin, bio, 0);
 }

out_unlock:
 up_write(&s->lock);

 return r;
}
