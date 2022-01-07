
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int lock; int deferred_flush_bios; } ;
struct bio {int dummy; } ;


 scalar_t__ CM_READ_ONLY ;
 int bio_io_error (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 int bio_triggers_commit (struct clone*,struct bio*) ;
 int generic_make_request (struct bio*) ;
 scalar_t__ get_clone_mode (struct clone*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wake_worker (struct clone*) ;

__attribute__((used)) static void issue_bio(struct clone *clone, struct bio *bio)
{
 unsigned long flags;

 if (!bio_triggers_commit(clone, bio)) {
  generic_make_request(bio);
  return;
 }





 if (unlikely(get_clone_mode(clone) >= CM_READ_ONLY)) {
  bio_io_error(bio);
  return;
 }





 spin_lock_irqsave(&clone->lock, flags);
 bio_list_add(&clone->deferred_flush_bios, bio);
 spin_unlock_irqrestore(&clone->lock, flags);

 wake_worker(clone);
}
