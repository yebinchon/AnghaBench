
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_list {int dummy; } ;
struct clone {int last_commit_jiffies; int cmd; int lock; struct bio_list deferred_flush_completions; struct bio_list deferred_flush_bios; } ;
struct bio {int dummy; } ;


 struct bio_list BIO_EMPTY_LIST ;
 int bio_endio (struct bio*) ;
 int bio_io_error (struct bio*) ;
 scalar_t__ bio_list_empty (struct bio_list*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 scalar_t__ commit_metadata (struct clone*) ;
 scalar_t__ dm_clone_changed_this_transaction (int ) ;
 int generic_make_request (struct bio*) ;
 int jiffies ;
 scalar_t__ need_commit_due_to_time (struct clone*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void process_deferred_flush_bios(struct clone *clone)
{
 struct bio *bio;
 unsigned long flags;
 struct bio_list bios = BIO_EMPTY_LIST;
 struct bio_list bio_completions = BIO_EMPTY_LIST;





 spin_lock_irqsave(&clone->lock, flags);
 bio_list_merge(&bios, &clone->deferred_flush_bios);
 bio_list_init(&clone->deferred_flush_bios);

 bio_list_merge(&bio_completions, &clone->deferred_flush_completions);
 bio_list_init(&clone->deferred_flush_completions);
 spin_unlock_irqrestore(&clone->lock, flags);

 if (bio_list_empty(&bios) && bio_list_empty(&bio_completions) &&
     !(dm_clone_changed_this_transaction(clone->cmd) && need_commit_due_to_time(clone)))
  return;

 if (commit_metadata(clone)) {
  bio_list_merge(&bios, &bio_completions);

  while ((bio = bio_list_pop(&bios)))
   bio_io_error(bio);

  return;
 }

 clone->last_commit_jiffies = jiffies;

 while ((bio = bio_list_pop(&bio_completions)))
  bio_endio(bio);

 while ((bio = bio_list_pop(&bios)))
  generic_make_request(bio);
}
