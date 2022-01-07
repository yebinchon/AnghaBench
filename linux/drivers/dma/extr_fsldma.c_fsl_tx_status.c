
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int desc_lock; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int fsldma_cleanup_descriptors (struct fsldma_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct fsldma_chan* to_fsl_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status fsl_tx_status(struct dma_chan *dchan,
     dma_cookie_t cookie,
     struct dma_tx_state *txstate)
{
 struct fsldma_chan *chan = to_fsl_chan(dchan);
 enum dma_status ret;

 ret = dma_cookie_status(dchan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return ret;

 spin_lock_bh(&chan->desc_lock);
 fsldma_cleanup_descriptors(chan);
 spin_unlock_bh(&chan->desc_lock);

 return dma_cookie_status(dchan, cookie, txstate);
}
