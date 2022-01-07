
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_writes_c {int logging_enabled; int blocks_lock; } ;
struct bio {scalar_t__ bi_status; struct log_writes_c* bi_private; } ;


 int DMERR (char*,scalar_t__) ;
 int bio_free_pages (struct bio*) ;
 int bio_put (struct bio*) ;
 int put_io_block (struct log_writes_c*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void log_end_io(struct bio *bio)
{
 struct log_writes_c *lc = bio->bi_private;

 if (bio->bi_status) {
  unsigned long flags;

  DMERR("Error writing log block, error=%d", bio->bi_status);
  spin_lock_irqsave(&lc->blocks_lock, flags);
  lc->logging_enabled = 0;
  spin_unlock_irqrestore(&lc->blocks_lock, flags);
 }

 bio_free_pages(bio);
 put_io_block(lc);
 bio_put(bio);
}
