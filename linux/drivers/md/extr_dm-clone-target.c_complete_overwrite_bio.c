
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int lock; int deferred_flush_completions; } ;
struct bio {int bi_opf; } ;


 scalar_t__ CM_READ_ONLY ;
 int REQ_FUA ;
 int bio_endio (struct bio*) ;
 int bio_io_error (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ get_clone_mode (struct clone*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wake_worker (struct clone*) ;

__attribute__((used)) static void complete_overwrite_bio(struct clone *clone, struct bio *bio)
{
 unsigned long flags;
 if (!(bio->bi_opf & REQ_FUA)) {
  bio_endio(bio);
  return;
 }





 if (unlikely(get_clone_mode(clone) >= CM_READ_ONLY)) {
  bio_io_error(bio);
  return;
 }





 spin_lock_irqsave(&clone->lock, flags);
 bio_list_add(&clone->deferred_flush_completions, bio);
 spin_unlock_irqrestore(&clone->lock, flags);

 wake_worker(clone);
}
