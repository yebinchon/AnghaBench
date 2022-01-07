
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_writecache {TYPE_2__* dev; int flush_list; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {int bi_status; TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int bdev; } ;


 int BLK_STS_IOERR ;
 scalar_t__ REQ_OP_DISCARD ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int bio_end_sector (struct bio*) ;
 int bio_endio (struct bio*) ;
 struct bio* bio_list_pop (int *) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int generic_make_request (struct bio*) ;
 int kthread_should_stop () ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ unlikely (int ) ;
 int wc_lock (struct dm_writecache*) ;
 int wc_unlock (struct dm_writecache*) ;
 int writecache_discard (struct dm_writecache*,int ,int ) ;
 int writecache_flush (struct dm_writecache*) ;
 scalar_t__ writecache_has_error (struct dm_writecache*) ;

__attribute__((used)) static int writecache_flush_thread(void *data)
{
 struct dm_writecache *wc = data;

 while (1) {
  struct bio *bio;

  wc_lock(wc);
  bio = bio_list_pop(&wc->flush_list);
  if (!bio) {
   set_current_state(TASK_INTERRUPTIBLE);
   wc_unlock(wc);

   if (unlikely(kthread_should_stop())) {
    set_current_state(TASK_RUNNING);
    break;
   }

   schedule();
   continue;
  }

  if (bio_op(bio) == REQ_OP_DISCARD) {
   writecache_discard(wc, bio->bi_iter.bi_sector,
        bio_end_sector(bio));
   wc_unlock(wc);
   bio_set_dev(bio, wc->dev->bdev);
   generic_make_request(bio);
  } else {
   writecache_flush(wc);
   wc_unlock(wc);
   if (writecache_has_error(wc))
    bio->bi_status = BLK_STS_IOERR;
   bio_endio(bio);
  }
 }

 return 0;
}
