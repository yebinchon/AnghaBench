
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror_set {int rh; } ;
struct mirror {TYPE_1__* dev; } ;
struct dm_target {scalar_t__ private; } ;
struct dm_bio_details {int * bi_disk; } ;
struct dm_raid1_bio_record {struct dm_bio_details details; struct mirror* m; int write_region; } ;
struct bio {int bi_opf; scalar_t__ bi_status; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_2__ {int name; } ;


 scalar_t__ BLK_STS_NOTSUPP ;
 int DMERR (char*,...) ;
 int DMERR_LIMIT (char*) ;
 int DM_ENDIO_DONE ;
 int DM_ENDIO_INCOMPLETE ;
 int DM_RAID1_READ_ERROR ;
 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 int REQ_RAHEAD ;
 int WRITE ;
 int bio_data_dir (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 scalar_t__ default_ok (struct mirror*) ;
 int dm_bio_restore (struct dm_bio_details*,struct bio*) ;
 struct dm_raid1_bio_record* dm_per_bio_data (struct bio*,int) ;
 int dm_rh_dec (int ,int ) ;
 int fail_mirror (struct mirror*,int ) ;
 scalar_t__ mirror_available (struct mirror_set*,struct bio*) ;
 int queue_bio (struct mirror_set*,struct bio*,int) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static int mirror_end_io(struct dm_target *ti, struct bio *bio,
  blk_status_t *error)
{
 int rw = bio_data_dir(bio);
 struct mirror_set *ms = (struct mirror_set *) ti->private;
 struct mirror *m = ((void*)0);
 struct dm_bio_details *bd = ((void*)0);
 struct dm_raid1_bio_record *bio_record =
   dm_per_bio_data(bio, sizeof(struct dm_raid1_bio_record));




 if (rw == WRITE) {
  if (!(bio->bi_opf & REQ_PREFLUSH) &&
      bio_op(bio) != REQ_OP_DISCARD)
   dm_rh_dec(ms->rh, bio_record->write_region);
  return DM_ENDIO_DONE;
 }

 if (*error == BLK_STS_NOTSUPP)
  goto out;

 if (bio->bi_opf & REQ_RAHEAD)
  goto out;

 if (unlikely(*error)) {
  if (!bio_record->details.bi_disk) {





   DMERR_LIMIT("Mirror read failed.");
   return DM_ENDIO_DONE;
  }

  m = bio_record->m;

  DMERR("Mirror read failed from %s. Trying alternative device.",
        m->dev->name);

  fail_mirror(m, DM_RAID1_READ_ERROR);





  if (default_ok(m) || mirror_available(ms, bio)) {
   bd = &bio_record->details;

   dm_bio_restore(bd, bio);
   bio_record->details.bi_disk = ((void*)0);
   bio->bi_status = 0;

   queue_bio(ms, bio, rw);
   return DM_ENDIO_INCOMPLETE;
  }
  DMERR("All replicated volumes dead, failing I/O");
 }

out:
 bio_record->details.bi_disk = ((void*)0);

 return DM_ENDIO_DONE;
}
