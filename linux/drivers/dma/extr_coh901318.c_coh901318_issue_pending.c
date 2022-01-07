
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct coh901318_chan {int lock; int busy; } ;


 int coh901318_queue_start (struct coh901318_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct coh901318_chan* to_coh901318_chan (struct dma_chan*) ;

__attribute__((used)) static void
coh901318_issue_pending(struct dma_chan *chan)
{
 struct coh901318_chan *cohc = to_coh901318_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&cohc->lock, flags);







 if (!cohc->busy)
  coh901318_queue_start(cohc);

 spin_unlock_irqrestore(&cohc->lock, flags);
}
