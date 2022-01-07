
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r1conf {int wait_barrier; TYPE_2__* mddev; } ;
struct md_rdev {int flags; int bdev; } ;
struct bio {TYPE_1__* bi_disk; struct bio* bi_next; } ;
struct TYPE_4__ {int bitmap; } ;
struct TYPE_3__ {int queue; } ;


 int Faulty ;
 scalar_t__ REQ_OP_DISCARD ;
 int bio_endio (struct bio*) ;
 int bio_io_error (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int blk_queue_discard (int ) ;
 int generic_make_request (struct bio*) ;
 int md_bitmap_unplug (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void flush_bio_list(struct r1conf *conf, struct bio *bio)
{

 md_bitmap_unplug(conf->mddev->bitmap);
 wake_up(&conf->wait_barrier);

 while (bio) {
  struct bio *next = bio->bi_next;
  struct md_rdev *rdev = (void *)bio->bi_disk;
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
}
