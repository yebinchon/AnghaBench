
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entry; } ;
struct continuation {TYPE_1__ ws; } ;
struct batcher {int commit_scheduled; int lock; int work_items; } ;


 int async_commit (struct batcher*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void continue_after_commit(struct batcher *b, struct continuation *k)
{
 unsigned long flags;
 bool commit_scheduled;

 spin_lock_irqsave(&b->lock, flags);
 commit_scheduled = b->commit_scheduled;
 list_add_tail(&k->ws.entry, &b->work_items);
 spin_unlock_irqrestore(&b->lock, flags);

 if (commit_scheduled)
  async_commit(b);
}
