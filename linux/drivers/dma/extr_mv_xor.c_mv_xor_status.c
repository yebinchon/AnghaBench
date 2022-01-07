
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_chan {int lock; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int mv_chan_slot_cleanup (struct mv_xor_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct mv_xor_chan* to_mv_xor_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status mv_xor_status(struct dma_chan *chan,
       dma_cookie_t cookie,
       struct dma_tx_state *txstate)
{
 struct mv_xor_chan *mv_chan = to_mv_xor_chan(chan);
 enum dma_status ret;

 ret = dma_cookie_status(chan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return ret;

 spin_lock_bh(&mv_chan->lock);
 mv_chan_slot_cleanup(mv_chan);
 spin_unlock_bh(&mv_chan->lock);

 return dma_cookie_status(chan, cookie, txstate);
}
