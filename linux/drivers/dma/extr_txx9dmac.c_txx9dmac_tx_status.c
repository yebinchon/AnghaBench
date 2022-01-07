
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9dmac_chan {int lock; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct txx9dmac_chan* to_txx9dmac_chan (struct dma_chan*) ;
 int txx9dmac_scan_descriptors (struct txx9dmac_chan*) ;

__attribute__((used)) static enum dma_status
txx9dmac_tx_status(struct dma_chan *chan, dma_cookie_t cookie,
     struct dma_tx_state *txstate)
{
 struct txx9dmac_chan *dc = to_txx9dmac_chan(chan);
 enum dma_status ret;

 ret = dma_cookie_status(chan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return DMA_COMPLETE;

 spin_lock_bh(&dc->lock);
 txx9dmac_scan_descriptors(dc);
 spin_unlock_bh(&dc->lock);

 return dma_cookie_status(chan, cookie, txstate);
}
