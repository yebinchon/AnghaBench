
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct r1conf {TYPE_3__* mddev; TYPE_1__* mirrors; } ;
struct r1bio {int ** bios; struct bio* master_bio; int state; int remaining; int behind_remaining; scalar_t__ sectors; scalar_t__ sector; TYPE_4__* mddev; } ;
struct md_rdev {int flags; } ;
struct TYPE_6__ {scalar_t__ bi_sector; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; scalar_t__ bi_status; struct r1bio* bi_private; } ;
typedef scalar_t__ sector_t ;
struct TYPE_8__ {struct r1conf* private; } ;
struct TYPE_7__ {int recovery; } ;
struct TYPE_5__ {struct md_rdev* rdev; } ;


 int FailFast ;
 int Faulty ;
 int * IO_MADE_GOOD ;
 int In_sync ;
 int MD_FAILFAST ;
 int MD_RECOVERY_NEEDED ;
 int R1BIO_BehindIO ;
 int R1BIO_MadeGood ;
 int R1BIO_Returned ;
 int R1BIO_Uptodate ;
 int R1BIO_WriteError ;
 scalar_t__ REQ_OP_DISCARD ;
 int WBCollisionCheck ;
 int WantReplacement ;
 int WriteErrorSeen ;
 int WriteMostly ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 scalar_t__ bio_end_sector (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_put (struct bio*) ;
 int call_bio_endio (struct r1bio*) ;
 int find_bio_disk (struct r1bio*,struct bio*) ;
 scalar_t__ is_badblock (struct md_rdev*,scalar_t__,scalar_t__,scalar_t__*,int*) ;
 int md_error (TYPE_4__*,struct md_rdev*) ;
 int pr_debug (char*,unsigned long long,unsigned long long) ;
 int r1_bio_write_done (struct r1bio*) ;
 int rdev_dec_pending (struct md_rdev*,TYPE_3__*) ;
 int remove_wb (struct md_rdev*,scalar_t__,scalar_t__) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void raid1_end_write_request(struct bio *bio)
{
 struct r1bio *r1_bio = bio->bi_private;
 int behind = test_bit(R1BIO_BehindIO, &r1_bio->state);
 struct r1conf *conf = r1_bio->mddev->private;
 struct bio *to_put = ((void*)0);
 int mirror = find_bio_disk(r1_bio, bio);
 struct md_rdev *rdev = conf->mirrors[mirror].rdev;
 bool discard_error;

 discard_error = bio->bi_status && bio_op(bio) == REQ_OP_DISCARD;




 if (bio->bi_status && !discard_error) {
  set_bit(WriteErrorSeen, &rdev->flags);
  if (!test_and_set_bit(WantReplacement, &rdev->flags))
   set_bit(MD_RECOVERY_NEEDED, &
    conf->mddev->recovery);

  if (test_bit(FailFast, &rdev->flags) &&
      (bio->bi_opf & MD_FAILFAST) &&

      !test_bit(WriteMostly, &rdev->flags)) {
   md_error(r1_bio->mddev, rdev);
  }







  if (!test_bit(Faulty, &rdev->flags))
   set_bit(R1BIO_WriteError, &r1_bio->state);
  else {

   r1_bio->bios[mirror] = ((void*)0);
   to_put = bio;
  }
 } else {
  sector_t first_bad;
  int bad_sectors;

  r1_bio->bios[mirror] = ((void*)0);
  to_put = bio;
  if (test_bit(In_sync, &rdev->flags) &&
      !test_bit(Faulty, &rdev->flags))
   set_bit(R1BIO_Uptodate, &r1_bio->state);


  if (is_badblock(rdev, r1_bio->sector, r1_bio->sectors,
    &first_bad, &bad_sectors) && !discard_error) {
   r1_bio->bios[mirror] = IO_MADE_GOOD;
   set_bit(R1BIO_MadeGood, &r1_bio->state);
  }
 }

 if (behind) {
  if (test_bit(WBCollisionCheck, &rdev->flags)) {
   sector_t lo = r1_bio->sector;
   sector_t hi = r1_bio->sector + r1_bio->sectors;

   remove_wb(rdev, lo, hi);
  }
  if (test_bit(WriteMostly, &rdev->flags))
   atomic_dec(&r1_bio->behind_remaining);
  if (atomic_read(&r1_bio->behind_remaining) >= (atomic_read(&r1_bio->remaining)-1) &&
      test_bit(R1BIO_Uptodate, &r1_bio->state)) {

   if (!test_and_set_bit(R1BIO_Returned, &r1_bio->state)) {
    struct bio *mbio = r1_bio->master_bio;
    pr_debug("raid1: behind end write sectors"
      " %llu-%llu\n",
      (unsigned long long) mbio->bi_iter.bi_sector,
      (unsigned long long) bio_end_sector(mbio) - 1);
    call_bio_endio(r1_bio);
   }
  }
 }
 if (r1_bio->bios[mirror] == ((void*)0))
  rdev_dec_pending(rdev, conf->mddev);





 r1_bio_write_done(r1_bio);

 if (to_put)
  bio_put(to_put);
}
