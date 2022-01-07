
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* running; } ;
struct rcar_dmac_chan {int lock; TYPE_2__ desc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;
struct TYPE_3__ {int cyclic; } ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,unsigned int) ;
 unsigned int rcar_dmac_chan_get_residue (struct rcar_dmac_chan*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rcar_dmac_chan* to_rcar_dmac_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status rcar_dmac_tx_status(struct dma_chan *chan,
        dma_cookie_t cookie,
        struct dma_tx_state *txstate)
{
 struct rcar_dmac_chan *rchan = to_rcar_dmac_chan(chan);
 enum dma_status status;
 unsigned long flags;
 unsigned int residue;
 bool cyclic;

 status = dma_cookie_status(chan, cookie, txstate);
 if (status == DMA_COMPLETE || !txstate)
  return status;

 spin_lock_irqsave(&rchan->lock, flags);
 residue = rcar_dmac_chan_get_residue(rchan, cookie);
 cyclic = rchan->desc.running ? rchan->desc.running->cyclic : 0;
 spin_unlock_irqrestore(&rchan->lock, flags);


 if (!residue && !cyclic)
  return DMA_COMPLETE;

 dma_set_residue(txstate, residue);

 return status;
}
