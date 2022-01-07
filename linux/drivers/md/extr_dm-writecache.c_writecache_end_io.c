
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int * bio_in_progress_wait; int * bio_in_progress; } ;
struct dm_target {struct dm_writecache* private; } ;
struct bio {int * bi_private; } ;
typedef int blk_status_t ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_data_dir (struct bio*) ;
 scalar_t__ unlikely (int ) ;
 int waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int writecache_end_io(struct dm_target *ti, struct bio *bio, blk_status_t *status)
{
 struct dm_writecache *wc = ti->private;

 if (bio->bi_private != ((void*)0)) {
  int dir = bio_data_dir(bio);
  if (atomic_dec_and_test(&wc->bio_in_progress[dir]))
   if (unlikely(waitqueue_active(&wc->bio_in_progress_wait[dir])))
    wake_up(&wc->bio_in_progress_wait[dir]);
 }
 return 0;
}
