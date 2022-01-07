
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct axi_dma_chan {TYPE_1__ vc; } ;


 int axi_chan_start_first_queued (struct axi_dma_chan*) ;
 struct axi_dma_chan* dchan_to_axi_dma_chan (struct dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void dma_chan_issue_pending(struct dma_chan *dchan)
{
 struct axi_dma_chan *chan = dchan_to_axi_dma_chan(dchan);
 unsigned long flags;

 spin_lock_irqsave(&chan->vc.lock, flags);
 if (vchan_issue_pending(&chan->vc))
  axi_chan_start_first_queued(chan);
 spin_unlock_irqrestore(&chan->vc.lock, flags);
}
