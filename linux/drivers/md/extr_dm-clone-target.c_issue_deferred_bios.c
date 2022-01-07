
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int lock; int deferred_flush_bios; int deferred_bios; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;


 struct bio_list BIO_EMPTY_LIST ;
 int bio_list_add (struct bio_list*,struct bio*) ;
 scalar_t__ bio_list_empty (struct bio_list*) ;
 int bio_list_merge (int *,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 scalar_t__ bio_triggers_commit (struct clone*,struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_worker (struct clone*) ;

__attribute__((used)) static void issue_deferred_bios(struct clone *clone, struct bio_list *bios)
{
 struct bio *bio;
 unsigned long flags;
 struct bio_list flush_bios = BIO_EMPTY_LIST;
 struct bio_list normal_bios = BIO_EMPTY_LIST;

 if (bio_list_empty(bios))
  return;

 while ((bio = bio_list_pop(bios))) {
  if (bio_triggers_commit(clone, bio))
   bio_list_add(&flush_bios, bio);
  else
   bio_list_add(&normal_bios, bio);
 }

 spin_lock_irqsave(&clone->lock, flags);
 bio_list_merge(&clone->deferred_bios, &normal_bios);
 bio_list_merge(&clone->deferred_flush_bios, &flush_bios);
 spin_unlock_irqrestore(&clone->lock, flags);

 wake_worker(clone);
}
