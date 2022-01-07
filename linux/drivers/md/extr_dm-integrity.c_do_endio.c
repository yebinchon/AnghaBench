
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct dm_integrity_c {int synchronous_mode; TYPE_1__ endio_wait; int bitmap_flush_work; int commit_wq; int synchronous_bios; } ;
struct bio {scalar_t__ bi_status; } ;


 scalar_t__ REQ_OP_WRITE ;
 int bio_endio (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int dm_integrity_failed (struct dm_integrity_c*) ;
 scalar_t__ errno_to_blk_status (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void do_endio(struct dm_integrity_c *ic, struct bio *bio)
{
 int r = dm_integrity_failed(ic);
 if (unlikely(r) && !bio->bi_status)
  bio->bi_status = errno_to_blk_status(r);
 if (unlikely(ic->synchronous_mode) && bio_op(bio) == REQ_OP_WRITE) {
  unsigned long flags;
  spin_lock_irqsave(&ic->endio_wait.lock, flags);
  bio_list_add(&ic->synchronous_bios, bio);
  queue_delayed_work(ic->commit_wq, &ic->bitmap_flush_work, 0);
  spin_unlock_irqrestore(&ic->endio_wait.lock, flags);
  return;
 }
 bio_endio(bio);
}
