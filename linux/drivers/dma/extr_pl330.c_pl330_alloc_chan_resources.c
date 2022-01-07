
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl330_dmac {int lock; } ;
struct dma_pl330_chan {int cyclic; int task; int thread; struct pl330_dmac* dmac; } ;
struct dma_chan {int dummy; } ;


 int ENOMEM ;
 int dma_cookie_init (struct dma_chan*) ;
 int pl330_request_channel (struct pl330_dmac*) ;
 int pl330_tasklet ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_init (int *,int ,unsigned long) ;
 struct dma_pl330_chan* to_pchan (struct dma_chan*) ;

__attribute__((used)) static int pl330_alloc_chan_resources(struct dma_chan *chan)
{
 struct dma_pl330_chan *pch = to_pchan(chan);
 struct pl330_dmac *pl330 = pch->dmac;
 unsigned long flags;

 spin_lock_irqsave(&pl330->lock, flags);

 dma_cookie_init(chan);
 pch->cyclic = 0;

 pch->thread = pl330_request_channel(pl330);
 if (!pch->thread) {
  spin_unlock_irqrestore(&pl330->lock, flags);
  return -ENOMEM;
 }

 tasklet_init(&pch->task, pl330_tasklet, (unsigned long) pch);

 spin_unlock_irqrestore(&pl330->lock, flags);

 return 1;
}
