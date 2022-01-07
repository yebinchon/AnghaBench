
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxad_chan {scalar_t__ bus_error; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef scalar_t__ dma_cookie_t ;


 int DMA_ERROR ;
 int dma_cookie_status (struct dma_chan*,scalar_t__,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,int ) ;
 scalar_t__ likely (int ) ;
 int pxad_residue (struct pxad_chan*,scalar_t__) ;
 struct pxad_chan* to_pxad_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status pxad_tx_status(struct dma_chan *dchan,
          dma_cookie_t cookie,
          struct dma_tx_state *txstate)
{
 struct pxad_chan *chan = to_pxad_chan(dchan);
 enum dma_status ret;

 if (cookie == chan->bus_error)
  return DMA_ERROR;

 ret = dma_cookie_status(dchan, cookie, txstate);
 if (likely(txstate && (ret != DMA_ERROR)))
  dma_set_residue(txstate, pxad_residue(chan, cookie));

 return ret;
}
