
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chan {int flags; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int device; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int DMA_IN_PROGRESS ;
 int DMA_PAUSED ;
 int DW_DMA_IS_PAUSED ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,int ) ;
 int dwc_get_residue (struct dw_dma_chan*,int ) ;
 int dwc_scan_descriptors (int ,struct dw_dma_chan*) ;
 scalar_t__ test_bit (int ,int *) ;
 int to_dw_dma (int ) ;
 struct dw_dma_chan* to_dw_dma_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status
dwc_tx_status(struct dma_chan *chan,
       dma_cookie_t cookie,
       struct dma_tx_state *txstate)
{
 struct dw_dma_chan *dwc = to_dw_dma_chan(chan);
 enum dma_status ret;

 ret = dma_cookie_status(chan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return ret;

 dwc_scan_descriptors(to_dw_dma(chan->device), dwc);

 ret = dma_cookie_status(chan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return ret;

 dma_set_residue(txstate, dwc_get_residue(dwc, cookie));

 if (test_bit(DW_DMA_IS_PAUSED, &dwc->flags) && ret == DMA_IN_PROGRESS)
  return DMA_PAUSED;

 return ret;
}
