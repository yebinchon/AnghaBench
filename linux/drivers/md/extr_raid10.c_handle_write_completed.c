
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct r10conf {int copies; TYPE_3__* mddev; int wait_barrier; int device_lock; int nr_queued; int bio_end_io_list; TYPE_1__* mirrors; } ;
struct r10bio {int state; int retry_list; int sectors; TYPE_2__* devs; } ;
struct md_rdev {int dummy; } ;
struct bio {scalar_t__ bi_status; int * bi_end_io; } ;
struct TYPE_7__ {int thread; } ;
struct TYPE_6__ {int devnum; int addr; struct bio* repl_bio; struct bio* bio; } ;
struct TYPE_5__ {struct md_rdev* replacement; struct md_rdev* rdev; } ;


 struct bio* IO_MADE_GOOD ;
 int R10BIO_Degraded ;
 int R10BIO_IsRecover ;
 int R10BIO_IsSync ;
 int R10BIO_WriteError ;
 int close_write (struct r10bio*) ;
 int list_add (int *,int *) ;
 int md_error (TYPE_3__*,struct md_rdev*) ;
 int md_wakeup_thread (int ) ;
 int narrow_write_error (struct r10bio*,int) ;
 int put_buf (struct r10bio*) ;
 int raid_end_bio_io (struct r10bio*) ;
 int rdev_clear_badblocks (struct md_rdev*,int ,int ,int ) ;
 int rdev_dec_pending (struct md_rdev*,TYPE_3__*) ;
 int rdev_set_badblocks (struct md_rdev*,int ,int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void handle_write_completed(struct r10conf *conf, struct r10bio *r10_bio)
{






 int m;
 struct md_rdev *rdev;

 if (test_bit(R10BIO_IsSync, &r10_bio->state) ||
     test_bit(R10BIO_IsRecover, &r10_bio->state)) {
  for (m = 0; m < conf->copies; m++) {
   int dev = r10_bio->devs[m].devnum;
   rdev = conf->mirrors[dev].rdev;
   if (r10_bio->devs[m].bio == ((void*)0) ||
    r10_bio->devs[m].bio->bi_end_io == ((void*)0))
    continue;
   if (!r10_bio->devs[m].bio->bi_status) {
    rdev_clear_badblocks(
     rdev,
     r10_bio->devs[m].addr,
     r10_bio->sectors, 0);
   } else {
    if (!rdev_set_badblocks(
         rdev,
         r10_bio->devs[m].addr,
         r10_bio->sectors, 0))
     md_error(conf->mddev, rdev);
   }
   rdev = conf->mirrors[dev].replacement;
   if (r10_bio->devs[m].repl_bio == ((void*)0) ||
    r10_bio->devs[m].repl_bio->bi_end_io == ((void*)0))
    continue;

   if (!r10_bio->devs[m].repl_bio->bi_status) {
    rdev_clear_badblocks(
     rdev,
     r10_bio->devs[m].addr,
     r10_bio->sectors, 0);
   } else {
    if (!rdev_set_badblocks(
         rdev,
         r10_bio->devs[m].addr,
         r10_bio->sectors, 0))
     md_error(conf->mddev, rdev);
   }
  }
  put_buf(r10_bio);
 } else {
  bool fail = 0;
  for (m = 0; m < conf->copies; m++) {
   int dev = r10_bio->devs[m].devnum;
   struct bio *bio = r10_bio->devs[m].bio;
   rdev = conf->mirrors[dev].rdev;
   if (bio == IO_MADE_GOOD) {
    rdev_clear_badblocks(
     rdev,
     r10_bio->devs[m].addr,
     r10_bio->sectors, 0);
    rdev_dec_pending(rdev, conf->mddev);
   } else if (bio != ((void*)0) && bio->bi_status) {
    fail = 1;
    if (!narrow_write_error(r10_bio, m)) {
     md_error(conf->mddev, rdev);
     set_bit(R10BIO_Degraded,
      &r10_bio->state);
    }
    rdev_dec_pending(rdev, conf->mddev);
   }
   bio = r10_bio->devs[m].repl_bio;
   rdev = conf->mirrors[dev].replacement;
   if (rdev && bio == IO_MADE_GOOD) {
    rdev_clear_badblocks(
     rdev,
     r10_bio->devs[m].addr,
     r10_bio->sectors, 0);
    rdev_dec_pending(rdev, conf->mddev);
   }
  }
  if (fail) {
   spin_lock_irq(&conf->device_lock);
   list_add(&r10_bio->retry_list, &conf->bio_end_io_list);
   conf->nr_queued++;
   spin_unlock_irq(&conf->device_lock);




   wake_up(&conf->wait_barrier);
   md_wakeup_thread(conf->mddev->thread);
  } else {
   if (test_bit(R10BIO_WriteError,
         &r10_bio->state))
    close_write(r10_bio);
   raid_end_bio_io(r10_bio);
  }
 }
}
