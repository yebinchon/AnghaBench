
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct r10conf {int mddev; TYPE_2__* mirrors; } ;
struct r10bio {int state; TYPE_3__* devs; int sectors; TYPE_1__* mddev; } ;
struct md_rdev {int flags; TYPE_4__* mddev; } ;
struct bio {int bi_opf; scalar_t__ bi_status; struct r10bio* bi_private; } ;
typedef int sector_t ;
struct TYPE_8__ {int recovery; } ;
struct TYPE_7__ {int * bio; void* repl_bio; int addr; } ;
struct TYPE_6__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;
struct TYPE_5__ {struct r10conf* private; } ;


 int FailFast ;
 int Faulty ;
 void* IO_MADE_GOOD ;
 int In_sync ;
 int MD_FAILFAST ;
 int MD_RECOVERY_NEEDED ;
 int R10BIO_MadeGood ;
 int R10BIO_Uptodate ;
 int R10BIO_WriteError ;
 scalar_t__ REQ_OP_DISCARD ;
 int WantReplacement ;
 int WriteErrorSeen ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_put (struct bio*) ;
 int find_bio_disk (struct r10conf*,struct r10bio*,struct bio*,int*,int*) ;
 scalar_t__ is_badblock (struct md_rdev*,int ,int ,int *,int*) ;
 int md_error (TYPE_4__*,struct md_rdev*) ;
 int one_write_done (struct r10bio*) ;
 int rdev_dec_pending (struct md_rdev*,int ) ;
 int set_bit (int ,int *) ;
 int smp_rmb () ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void raid10_end_write_request(struct bio *bio)
{
 struct r10bio *r10_bio = bio->bi_private;
 int dev;
 int dec_rdev = 1;
 struct r10conf *conf = r10_bio->mddev->private;
 int slot, repl;
 struct md_rdev *rdev = ((void*)0);
 struct bio *to_put = ((void*)0);
 bool discard_error;

 discard_error = bio->bi_status && bio_op(bio) == REQ_OP_DISCARD;

 dev = find_bio_disk(conf, r10_bio, bio, &slot, &repl);

 if (repl)
  rdev = conf->mirrors[dev].replacement;
 if (!rdev) {
  smp_rmb();
  repl = 0;
  rdev = conf->mirrors[dev].rdev;
 }



 if (bio->bi_status && !discard_error) {
  if (repl)



   md_error(rdev->mddev, rdev);
  else {
   set_bit(WriteErrorSeen, &rdev->flags);
   if (!test_and_set_bit(WantReplacement, &rdev->flags))
    set_bit(MD_RECOVERY_NEEDED,
     &rdev->mddev->recovery);

   dec_rdev = 0;
   if (test_bit(FailFast, &rdev->flags) &&
       (bio->bi_opf & MD_FAILFAST)) {
    md_error(rdev->mddev, rdev);
   }







   if (!test_bit(Faulty, &rdev->flags))
    set_bit(R10BIO_WriteError, &r10_bio->state);
   else {
    r10_bio->devs[slot].bio = ((void*)0);
    to_put = bio;
    dec_rdev = 1;
   }
  }
 } else {
  sector_t first_bad;
  int bad_sectors;
  if (test_bit(In_sync, &rdev->flags) &&
      !test_bit(Faulty, &rdev->flags))
   set_bit(R10BIO_Uptodate, &r10_bio->state);


  if (is_badblock(rdev,
    r10_bio->devs[slot].addr,
    r10_bio->sectors,
    &first_bad, &bad_sectors) && !discard_error) {
   bio_put(bio);
   if (repl)
    r10_bio->devs[slot].repl_bio = IO_MADE_GOOD;
   else
    r10_bio->devs[slot].bio = IO_MADE_GOOD;
   dec_rdev = 0;
   set_bit(R10BIO_MadeGood, &r10_bio->state);
  }
 }






 one_write_done(r10_bio);
 if (dec_rdev)
  rdev_dec_pending(rdev, conf->mddev);
 if (to_put)
  bio_put(to_put);
}
