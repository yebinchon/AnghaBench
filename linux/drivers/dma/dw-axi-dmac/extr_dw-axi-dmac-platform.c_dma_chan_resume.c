
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct axi_dma_chan {TYPE_1__ vc; scalar_t__ is_paused; } ;


 int axi_chan_resume (struct axi_dma_chan*) ;
 struct axi_dma_chan* dchan_to_axi_dma_chan (struct dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dma_chan_resume(struct dma_chan *dchan)
{
 struct axi_dma_chan *chan = dchan_to_axi_dma_chan(dchan);
 unsigned long flags;

 spin_lock_irqsave(&chan->vc.lock, flags);

 if (chan->is_paused)
  axi_chan_resume(chan);

 spin_unlock_irqrestore(&chan->vc.lock, flags);

 return 0;
}
