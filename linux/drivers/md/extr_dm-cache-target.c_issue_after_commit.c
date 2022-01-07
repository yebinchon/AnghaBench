
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
struct batcher {int commit_scheduled; int lock; int bios; } ;


 int async_commit (struct batcher*) ;
 int bio_list_add (int *,struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void issue_after_commit(struct batcher *b, struct bio *bio)
{
       unsigned long flags;
       bool commit_scheduled;

       spin_lock_irqsave(&b->lock, flags);
       commit_scheduled = b->commit_scheduled;
       bio_list_add(&b->bios, bio);
       spin_unlock_irqrestore(&b->lock, flags);

       if (commit_scheduled)
        async_commit(b);
}
