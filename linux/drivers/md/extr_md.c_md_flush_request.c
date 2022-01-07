
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mddev {TYPE_2__* pers; int flush_work; int lock; struct bio* flush_bio; int last_flush; int sb_wait; } ;
struct TYPE_3__ {scalar_t__ bi_size; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;
typedef int ktime_t ;
struct TYPE_4__ {int (* make_request ) (struct mddev*,struct bio*) ;} ;


 int INIT_WORK (int *,int ) ;
 int REQ_PREFLUSH ;
 int WARN_ON (struct bio*) ;
 int bio_endio (struct bio*) ;
 scalar_t__ ktime_after (int ,int ) ;
 int ktime_get_boottime () ;
 int md_wq ;
 int queue_work (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct mddev*,struct bio*) ;
 int submit_flushes ;
 int wait_event_lock_irq (int ,int,int ) ;

void md_flush_request(struct mddev *mddev, struct bio *bio)
{
 ktime_t start = ktime_get_boottime();
 spin_lock_irq(&mddev->lock);
 wait_event_lock_irq(mddev->sb_wait,
       !mddev->flush_bio ||
       ktime_after(mddev->last_flush, start),
       mddev->lock);
 if (!ktime_after(mddev->last_flush, start)) {
  WARN_ON(mddev->flush_bio);
  mddev->flush_bio = bio;
  bio = ((void*)0);
 }
 spin_unlock_irq(&mddev->lock);

 if (!bio) {
  INIT_WORK(&mddev->flush_work, submit_flushes);
  queue_work(md_wq, &mddev->flush_work);
 } else {

  if (bio->bi_iter.bi_size == 0)

   bio_endio(bio);
  else {
   bio->bi_opf &= ~REQ_PREFLUSH;
   mddev->pers->make_request(mddev, bio);
  }
 }
}
