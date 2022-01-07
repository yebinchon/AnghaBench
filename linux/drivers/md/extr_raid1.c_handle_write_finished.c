
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r1conf {int raid_disks; TYPE_2__* mddev; int wait_barrier; int device_lock; int * nr_queued; int bio_end_io_list; TYPE_1__* mirrors; } ;
struct r1bio {int state; int sector; int retry_list; int ** bios; int sectors; } ;
struct md_rdev {int dummy; } ;
struct TYPE_5__ {int thread; } ;
struct TYPE_4__ {struct md_rdev* rdev; } ;


 int * IO_MADE_GOOD ;
 int R1BIO_Degraded ;
 int R1BIO_WriteError ;
 int atomic_inc (int *) ;
 int close_write (struct r1bio*) ;
 int list_add (int *,int *) ;
 int md_error (TYPE_2__*,struct md_rdev*) ;
 int md_wakeup_thread (int ) ;
 int narrow_write_error (struct r1bio*,int) ;
 int raid_end_bio_io (struct r1bio*) ;
 int rdev_clear_badblocks (struct md_rdev*,int ,int ,int ) ;
 int rdev_dec_pending (struct md_rdev*,TYPE_2__*) ;
 int sector_to_idx (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void handle_write_finished(struct r1conf *conf, struct r1bio *r1_bio)
{
 int m, idx;
 bool fail = 0;

 for (m = 0; m < conf->raid_disks * 2 ; m++)
  if (r1_bio->bios[m] == IO_MADE_GOOD) {
   struct md_rdev *rdev = conf->mirrors[m].rdev;
   rdev_clear_badblocks(rdev,
          r1_bio->sector,
          r1_bio->sectors, 0);
   rdev_dec_pending(rdev, conf->mddev);
  } else if (r1_bio->bios[m] != ((void*)0)) {




   fail = 1;
   if (!narrow_write_error(r1_bio, m)) {
    md_error(conf->mddev,
      conf->mirrors[m].rdev);

    set_bit(R1BIO_Degraded, &r1_bio->state);
   }
   rdev_dec_pending(conf->mirrors[m].rdev,
      conf->mddev);
  }
 if (fail) {
  spin_lock_irq(&conf->device_lock);
  list_add(&r1_bio->retry_list, &conf->bio_end_io_list);
  idx = sector_to_idx(r1_bio->sector);
  atomic_inc(&conf->nr_queued[idx]);
  spin_unlock_irq(&conf->device_lock);




  wake_up(&conf->wait_barrier);
  md_wakeup_thread(conf->mddev->thread);
 } else {
  if (test_bit(R1BIO_WriteError, &r1_bio->state))
   close_write(r1_bio);
  raid_end_bio_io(r1_bio);
 }
}
