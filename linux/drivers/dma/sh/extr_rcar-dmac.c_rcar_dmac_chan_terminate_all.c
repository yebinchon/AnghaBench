
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_dmac_chan {int lock; } ;
struct dma_chan {int dummy; } ;


 int rcar_dmac_chan_halt (struct rcar_dmac_chan*) ;
 int rcar_dmac_chan_reinit (struct rcar_dmac_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rcar_dmac_chan* to_rcar_dmac_chan (struct dma_chan*) ;

__attribute__((used)) static int rcar_dmac_chan_terminate_all(struct dma_chan *chan)
{
 struct rcar_dmac_chan *rchan = to_rcar_dmac_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&rchan->lock, flags);
 rcar_dmac_chan_halt(rchan);
 spin_unlock_irqrestore(&rchan->lock, flags);






 rcar_dmac_chan_reinit(rchan);

 return 0;
}
