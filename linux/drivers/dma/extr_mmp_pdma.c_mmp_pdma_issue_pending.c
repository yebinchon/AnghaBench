
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_pdma_chan {int desc_lock; } ;
struct dma_chan {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_pending_queue (struct mmp_pdma_chan*) ;
 struct mmp_pdma_chan* to_mmp_pdma_chan (struct dma_chan*) ;

__attribute__((used)) static void mmp_pdma_issue_pending(struct dma_chan *dchan)
{
 struct mmp_pdma_chan *chan = to_mmp_pdma_chan(dchan);
 unsigned long flags;

 spin_lock_irqsave(&chan->desc_lock, flags);
 start_pending_queue(chan);
 spin_unlock_irqrestore(&chan->desc_lock, flags);
}
