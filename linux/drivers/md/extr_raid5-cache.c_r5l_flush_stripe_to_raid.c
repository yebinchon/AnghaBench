
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bi_opf; int bi_end_io; } ;
struct r5l_log {TYPE_2__ flush_bio; TYPE_1__* rdev; int io_list_lock; int flushing_ios; int io_end_ios; int need_cache_flush; } ;
struct TYPE_5__ {int bdev; } ;


 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int bio_reset (TYPE_2__*) ;
 int bio_set_dev (TYPE_2__*,int ) ;
 int list_empty (int *) ;
 int list_splice_tail_init (int *,int *) ;
 int r5l_log_flush_endio ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int submit_bio (TYPE_2__*) ;

void r5l_flush_stripe_to_raid(struct r5l_log *log)
{
 bool do_flush;

 if (!log || !log->need_cache_flush)
  return;

 spin_lock_irq(&log->io_list_lock);

 if (!list_empty(&log->flushing_ios)) {
  spin_unlock_irq(&log->io_list_lock);
  return;
 }
 list_splice_tail_init(&log->io_end_ios, &log->flushing_ios);
 do_flush = !list_empty(&log->flushing_ios);
 spin_unlock_irq(&log->io_list_lock);

 if (!do_flush)
  return;
 bio_reset(&log->flush_bio);
 bio_set_dev(&log->flush_bio, log->rdev->bdev);
 log->flush_bio.bi_end_io = r5l_log_flush_endio;
 log->flush_bio.bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;
 submit_bio(&log->flush_bio);
}
