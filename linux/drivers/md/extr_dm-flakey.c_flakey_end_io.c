
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_bio_data {scalar_t__ bio_submitted; } ;
struct flakey_c {scalar_t__ corrupt_bio_rw; int flags; scalar_t__ corrupt_bio_byte; } ;
struct dm_target {struct flakey_c* private; } ;
struct bio {int dummy; } ;
typedef scalar_t__ blk_status_t ;


 scalar_t__ BLK_STS_IOERR ;
 int DM_ENDIO_DONE ;
 int DROP_WRITES ;
 int ERROR_WRITES ;
 scalar_t__ READ ;
 scalar_t__ REQ_OP_ZONE_RESET ;
 scalar_t__ all_corrupt_bio_flags_match (struct bio*,struct flakey_c*) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int corrupt_bio_data (struct bio*,struct flakey_c*) ;
 struct per_bio_data* dm_per_bio_data (struct bio*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int flakey_end_io(struct dm_target *ti, struct bio *bio,
    blk_status_t *error)
{
 struct flakey_c *fc = ti->private;
 struct per_bio_data *pb = dm_per_bio_data(bio, sizeof(struct per_bio_data));

 if (bio_op(bio) == REQ_OP_ZONE_RESET)
  return DM_ENDIO_DONE;

 if (!*error && pb->bio_submitted && (bio_data_dir(bio) == READ)) {
  if (fc->corrupt_bio_byte && (fc->corrupt_bio_rw == READ) &&
      all_corrupt_bio_flags_match(bio, fc)) {



   corrupt_bio_data(bio, fc);

  } else if (!test_bit(DROP_WRITES, &fc->flags) &&
      !test_bit(ERROR_WRITES, &fc->flags)) {




   *error = BLK_STS_IOERR;
  }
 }

 return DM_ENDIO_DONE;
}
