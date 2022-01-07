
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_dma_chan {int lock; int queued; int active; } ;
struct dma_chan {int dummy; } ;


 struct sirfsoc_dma_chan* dma_chan_to_sirfsoc_dma_chan (struct dma_chan*) ;
 scalar_t__ list_empty (int *) ;
 int sirfsoc_dma_execute (struct sirfsoc_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sirfsoc_dma_issue_pending(struct dma_chan *chan)
{
 struct sirfsoc_dma_chan *schan = dma_chan_to_sirfsoc_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&schan->lock, flags);

 if (list_empty(&schan->active) && !list_empty(&schan->queued))
  sirfsoc_dma_execute(schan);

 spin_unlock_irqrestore(&schan->lock, flags);
}
