
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batcher {int commit_scheduled; int lock; int bios; int work_items; } ;


 int async_commit (struct batcher*) ;
 int bio_list_empty (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void schedule_commit(struct batcher *b)
{
 bool immediate;
 unsigned long flags;

 spin_lock_irqsave(&b->lock, flags);
 immediate = !list_empty(&b->work_items) || !bio_list_empty(&b->bios);
 b->commit_scheduled = 1;
 spin_unlock_irqrestore(&b->lock, flags);

 if (immediate)
  async_commit(b);
}
