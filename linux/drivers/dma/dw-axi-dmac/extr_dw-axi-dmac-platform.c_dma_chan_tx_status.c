
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
struct axi_dma_chan {scalar_t__ is_paused; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_IN_PROGRESS ;
 int DMA_PAUSED ;
 struct axi_dma_chan* dchan_to_axi_dma_chan (struct dma_chan*) ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;

__attribute__((used)) static enum dma_status
dma_chan_tx_status(struct dma_chan *dchan, dma_cookie_t cookie,
    struct dma_tx_state *txstate)
{
 struct axi_dma_chan *chan = dchan_to_axi_dma_chan(dchan);
 enum dma_status ret;

 ret = dma_cookie_status(dchan, cookie, txstate);

 if (chan->is_paused && ret == DMA_IN_PROGRESS)
  ret = DMA_PAUSED;

 return ret;
}
