
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r10conf {int mddev; } ;
struct r10bio {int read_slot; int state; scalar_t__ sector; TYPE_2__* devs; TYPE_1__* mddev; } ;
struct md_rdev {int bdev; int raid_disk; } ;
struct bio {struct r10bio* bi_private; int bi_status; } ;
struct TYPE_4__ {struct md_rdev* rdev; } ;
struct TYPE_3__ {struct r10conf* private; } ;


 int BDEVNAME_SIZE ;
 int R10BIO_Previous ;
 int R10BIO_ReadError ;
 int R10BIO_Uptodate ;
 int _enough (struct r10conf*,int ,int ) ;
 int bdevname (int ,char*) ;
 int mdname (int ) ;
 int pr_err_ratelimited (char*,int ,int ,unsigned long long) ;
 int raid_end_bio_io (struct r10bio*) ;
 int rdev_dec_pending (struct md_rdev*,int ) ;
 int reschedule_retry (struct r10bio*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int update_head_pos (int,struct r10bio*) ;

__attribute__((used)) static void raid10_end_read_request(struct bio *bio)
{
 int uptodate = !bio->bi_status;
 struct r10bio *r10_bio = bio->bi_private;
 int slot;
 struct md_rdev *rdev;
 struct r10conf *conf = r10_bio->mddev->private;

 slot = r10_bio->read_slot;
 rdev = r10_bio->devs[slot].rdev;



 update_head_pos(slot, r10_bio);

 if (uptodate) {
  set_bit(R10BIO_Uptodate, &r10_bio->state);
 } else {





  if (!_enough(conf, test_bit(R10BIO_Previous, &r10_bio->state),
        rdev->raid_disk))
   uptodate = 1;
 }
 if (uptodate) {
  raid_end_bio_io(r10_bio);
  rdev_dec_pending(rdev, conf->mddev);
 } else {



  char b[BDEVNAME_SIZE];
  pr_err_ratelimited("md/raid10:%s: %s: rescheduling sector %llu\n",
       mdname(conf->mddev),
       bdevname(rdev->bdev, b),
       (unsigned long long)r10_bio->sector);
  set_bit(R10BIO_ReadError, &r10_bio->state);
  reschedule_retry(r10_bio);
 }
}
