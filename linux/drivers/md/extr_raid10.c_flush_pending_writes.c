
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ head; } ;
struct r10conf {int device_lock; int wait_barrier; TYPE_1__* mddev; scalar_t__ pending_count; TYPE_3__ pending_bio_list; } ;
struct md_rdev {int flags; int bdev; } ;
struct blk_plug {int dummy; } ;
struct bio {TYPE_2__* bi_disk; struct bio* bi_next; } ;
struct TYPE_5__ {int queue; } ;
struct TYPE_4__ {int bitmap; } ;


 int Faulty ;
 scalar_t__ REQ_OP_DISCARD ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int bio_endio (struct bio*) ;
 int bio_io_error (struct bio*) ;
 struct bio* bio_list_get (TYPE_3__*) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_queue_discard (int ) ;
 int blk_start_plug (struct blk_plug*) ;
 int generic_make_request (struct bio*) ;
 int md_bitmap_unplug (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void flush_pending_writes(struct r10conf *conf)
{



 spin_lock_irq(&conf->device_lock);

 if (conf->pending_bio_list.head) {
  struct blk_plug plug;
  struct bio *bio;

  bio = bio_list_get(&conf->pending_bio_list);
  conf->pending_count = 0;
  spin_unlock_irq(&conf->device_lock);
  __set_current_state(TASK_RUNNING);

  blk_start_plug(&plug);


  md_bitmap_unplug(conf->mddev->bitmap);
  wake_up(&conf->wait_barrier);

  while (bio) {
   struct bio *next = bio->bi_next;
   struct md_rdev *rdev = (void*)bio->bi_disk;
   bio->bi_next = ((void*)0);
   bio_set_dev(bio, rdev->bdev);
   if (test_bit(Faulty, &rdev->flags)) {
    bio_io_error(bio);
   } else if (unlikely((bio_op(bio) == REQ_OP_DISCARD) &&
         !blk_queue_discard(bio->bi_disk->queue)))

    bio_endio(bio);
   else
    generic_make_request(bio);
   bio = next;
  }
  blk_finish_plug(&plug);
 } else
  spin_unlock_irq(&conf->device_lock);
}
