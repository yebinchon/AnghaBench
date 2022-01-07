
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int state; struct stripe_head* batch_head; } ;
struct r5conf {scalar_t__ reshape_progress; int reshape_safe; int wait_for_overlap; int preread_active_stripes; int gen_lock; int device_lock; } ;
struct mddev {scalar_t__ degraded; scalar_t__ reshape_position; int thread; scalar_t__ reshape_backwards; struct r5conf* private; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {int bi_opf; int bi_status; int * bi_next; TYPE_1__ bi_iter; } ;
typedef int sector_t ;


 int BLK_STS_IOERR ;
 int DEFINE_WAIT (int ) ;
 int ENODEV ;
 scalar_t__ MaxSector ;
 int const READ ;
 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 int REQ_RAHEAD ;
 int REQ_SYNC ;
 int STRIPE_DELAYED ;
 int STRIPE_EXPANDING ;
 int STRIPE_HANDLE ;
 int STRIPE_PREREAD_ACTIVE ;
 int STRIPE_R5C_PREFLUSH ;
 scalar_t__ STRIPE_SECTORS ;
 int TASK_UNINTERRUPTIBLE ;
 int const WRITE ;
 int add_stripe_bio (struct stripe_head*,struct bio*,int,int const,int) ;
 int atomic_inc (int *) ;
 int bio_data_dir (struct bio*) ;
 int bio_end_sector (struct bio*) ;
 int bio_endio (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 struct bio* chunk_aligned_read (struct mddev*,struct bio*) ;
 int clear_bit (int ,int *) ;
 int finish_wait (int *,int *) ;
 int log_handle_flush_request (struct r5conf*,struct bio*) ;
 int make_discard_request (struct mddev*,struct bio*) ;
 int md_flush_request (struct mddev*,struct bio*) ;
 int md_wakeup_thread (int ) ;
 int md_write_end (struct mddev*) ;
 int md_write_start (struct mddev*,struct bio*) ;
 int pr_debug (char*,unsigned long long,unsigned long long) ;
 int prepare_to_wait (int *,int *,int ) ;
 int raid5_compute_sector (struct r5conf*,int,int,int*,int *) ;
 struct stripe_head* raid5_get_active_stripe (struct r5conf*,int,int,int,int ) ;
 int raid5_release_stripe (struct stripe_head*) ;
 int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,int) ;
 int release_stripe_plug (struct mddev*,struct stripe_head*) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int w ;

__attribute__((used)) static bool raid5_make_request(struct mddev *mddev, struct bio * bi)
{
 struct r5conf *conf = mddev->private;
 int dd_idx;
 sector_t new_sector;
 sector_t logical_sector, last_sector;
 struct stripe_head *sh;
 const int rw = bio_data_dir(bi);
 DEFINE_WAIT(w);
 bool do_prepare;
 bool do_flush = 0;

 if (unlikely(bi->bi_opf & REQ_PREFLUSH)) {
  int ret = log_handle_flush_request(conf, bi);

  if (ret == 0)
   return 1;
  if (ret == -ENODEV) {
   md_flush_request(mddev, bi);
   return 1;
  }





  do_flush = bi->bi_opf & REQ_PREFLUSH;
 }

 if (!md_write_start(mddev, bi))
  return 0;





 if (rw == READ && mddev->degraded == 0 &&
     mddev->reshape_position == MaxSector) {
  bi = chunk_aligned_read(mddev, bi);
  if (!bi)
   return 1;
 }

 if (unlikely(bio_op(bi) == REQ_OP_DISCARD)) {
  make_discard_request(mddev, bi);
  md_write_end(mddev);
  return 1;
 }

 logical_sector = bi->bi_iter.bi_sector & ~((sector_t)STRIPE_SECTORS-1);
 last_sector = bio_end_sector(bi);
 bi->bi_next = ((void*)0);

 prepare_to_wait(&conf->wait_for_overlap, &w, TASK_UNINTERRUPTIBLE);
 for (;logical_sector < last_sector; logical_sector += STRIPE_SECTORS) {
  int previous;
  int seq;

  do_prepare = 0;
 retry:
  seq = read_seqcount_begin(&conf->gen_lock);
  previous = 0;
  if (do_prepare)
   prepare_to_wait(&conf->wait_for_overlap, &w,
    TASK_UNINTERRUPTIBLE);
  if (unlikely(conf->reshape_progress != MaxSector)) {
   spin_lock_irq(&conf->device_lock);
   if (mddev->reshape_backwards
       ? logical_sector < conf->reshape_progress
       : logical_sector >= conf->reshape_progress) {
    previous = 1;
   } else {
    if (mddev->reshape_backwards
        ? logical_sector < conf->reshape_safe
        : logical_sector >= conf->reshape_safe) {
     spin_unlock_irq(&conf->device_lock);
     schedule();
     do_prepare = 1;
     goto retry;
    }
   }
   spin_unlock_irq(&conf->device_lock);
  }

  new_sector = raid5_compute_sector(conf, logical_sector,
        previous,
        &dd_idx, ((void*)0));
  pr_debug("raid456: raid5_make_request, sector %llu logical %llu\n",
   (unsigned long long)new_sector,
   (unsigned long long)logical_sector);

  sh = raid5_get_active_stripe(conf, new_sector, previous,
           (bi->bi_opf & REQ_RAHEAD), 0);
  if (sh) {
   if (unlikely(previous)) {
    int must_retry = 0;
    spin_lock_irq(&conf->device_lock);
    if (mddev->reshape_backwards
        ? logical_sector >= conf->reshape_progress
        : logical_sector < conf->reshape_progress)

     must_retry = 1;
    spin_unlock_irq(&conf->device_lock);
    if (must_retry) {
     raid5_release_stripe(sh);
     schedule();
     do_prepare = 1;
     goto retry;
    }
   }
   if (read_seqcount_retry(&conf->gen_lock, seq)) {



    raid5_release_stripe(sh);
    goto retry;
   }

   if (test_bit(STRIPE_EXPANDING, &sh->state) ||
       !add_stripe_bio(sh, bi, dd_idx, rw, previous)) {




    md_wakeup_thread(mddev->thread);
    raid5_release_stripe(sh);
    schedule();
    do_prepare = 1;
    goto retry;
   }
   if (do_flush) {
    set_bit(STRIPE_R5C_PREFLUSH, &sh->state);

    do_flush = 0;
   }

   if (!sh->batch_head)
    set_bit(STRIPE_HANDLE, &sh->state);
   clear_bit(STRIPE_DELAYED, &sh->state);
   if ((!sh->batch_head || sh == sh->batch_head) &&
       (bi->bi_opf & REQ_SYNC) &&
       !test_and_set_bit(STRIPE_PREREAD_ACTIVE, &sh->state))
    atomic_inc(&conf->preread_active_stripes);
   release_stripe_plug(mddev, sh);
  } else {

   bi->bi_status = BLK_STS_IOERR;
   break;
  }
 }
 finish_wait(&conf->wait_for_overlap, &w);

 if (rw == WRITE)
  md_write_end(mddev);
 bio_endio(bi);
 return 1;
}
