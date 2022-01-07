
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct at_dma_chan {int lock; } ;


 int atc_advance_work (struct at_dma_chan*) ;
 scalar_t__ atc_chan_is_cyclic (struct at_dma_chan*) ;
 int chan2dev (struct dma_chan*) ;
 int dev_vdbg (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct at_dma_chan* to_at_dma_chan (struct dma_chan*) ;

__attribute__((used)) static void atc_issue_pending(struct dma_chan *chan)
{
 struct at_dma_chan *atchan = to_at_dma_chan(chan);
 unsigned long flags;

 dev_vdbg(chan2dev(chan), "issue_pending\n");


 if (atc_chan_is_cyclic(atchan))
  return;

 spin_lock_irqsave(&atchan->lock, flags);
 atc_advance_work(atchan);
 spin_unlock_irqrestore(&atchan->lock, flags);
}
