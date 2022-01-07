
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
struct at_dma_chan {int lock; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int DMA_ERROR ;
 int atc_get_bytes_left (struct dma_chan*,int ) ;
 int chan2dev (struct dma_chan*) ;
 int dev_vdbg (int ,char*,...) ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct at_dma_chan* to_at_dma_chan (struct dma_chan*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static enum dma_status
atc_tx_status(struct dma_chan *chan,
  dma_cookie_t cookie,
  struct dma_tx_state *txstate)
{
 struct at_dma_chan *atchan = to_at_dma_chan(chan);
 unsigned long flags;
 enum dma_status ret;
 int bytes = 0;

 ret = dma_cookie_status(chan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return ret;




 if (!txstate)
  return DMA_ERROR;

 spin_lock_irqsave(&atchan->lock, flags);


 bytes = atc_get_bytes_left(chan, cookie);

 spin_unlock_irqrestore(&atchan->lock, flags);

 if (unlikely(bytes < 0)) {
  dev_vdbg(chan2dev(chan), "get residual bytes error\n");
  return DMA_ERROR;
 } else {
  dma_set_residue(txstate, bytes);
 }

 dev_vdbg(chan2dev(chan), "tx_status %d: cookie = %d residue = %d\n",
   ret, cookie, bytes);

 return ret;
}
