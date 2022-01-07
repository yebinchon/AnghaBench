
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r1conf {int raid_disks; int mddev; int device_lock; TYPE_1__* mirrors; } ;
struct r1bio {size_t read_disk; int state; scalar_t__ sector; TYPE_2__* mddev; } ;
struct md_rdev {int bdev; int flags; } ;
struct bio {struct r1bio* bi_private; int bi_status; } ;
struct TYPE_4__ {int degraded; struct r1conf* private; } ;
struct TYPE_3__ {struct md_rdev* rdev; } ;


 int BDEVNAME_SIZE ;
 int FailFast ;
 int In_sync ;
 int R1BIO_FailFast ;
 int R1BIO_ReadError ;
 int R1BIO_Uptodate ;
 int bdevname (int ,char*) ;
 int mdname (int ) ;
 int pr_err_ratelimited (char*,int ,int ,unsigned long long) ;
 int raid_end_bio_io (struct r1bio*) ;
 int rdev_dec_pending (struct md_rdev*,int ) ;
 int reschedule_retry (struct r1bio*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int update_head_pos (size_t,struct r1bio*) ;

__attribute__((used)) static void raid1_end_read_request(struct bio *bio)
{
 int uptodate = !bio->bi_status;
 struct r1bio *r1_bio = bio->bi_private;
 struct r1conf *conf = r1_bio->mddev->private;
 struct md_rdev *rdev = conf->mirrors[r1_bio->read_disk].rdev;




 update_head_pos(r1_bio->read_disk, r1_bio);

 if (uptodate)
  set_bit(R1BIO_Uptodate, &r1_bio->state);
 else if (test_bit(FailFast, &rdev->flags) &&
   test_bit(R1BIO_FailFast, &r1_bio->state))


  ;
 else {




  unsigned long flags;
  spin_lock_irqsave(&conf->device_lock, flags);
  if (r1_bio->mddev->degraded == conf->raid_disks ||
      (r1_bio->mddev->degraded == conf->raid_disks-1 &&
       test_bit(In_sync, &rdev->flags)))
   uptodate = 1;
  spin_unlock_irqrestore(&conf->device_lock, flags);
 }

 if (uptodate) {
  raid_end_bio_io(r1_bio);
  rdev_dec_pending(rdev, conf->mddev);
 } else {



  char b[BDEVNAME_SIZE];
  pr_err_ratelimited("md/raid1:%s: %s: rescheduling sector %llu\n",
       mdname(conf->mddev),
       bdevname(rdev->bdev, b),
       (unsigned long long)r1_bio->sector);
  set_bit(R1BIO_ReadError, &r1_bio->state);
  reschedule_retry(r1_bio);

 }
}
