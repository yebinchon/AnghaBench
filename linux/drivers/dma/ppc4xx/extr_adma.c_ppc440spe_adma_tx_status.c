
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc440spe_adma_chan {int dummy; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int ppc440spe_adma_slot_cleanup (struct ppc440spe_adma_chan*) ;
 struct ppc440spe_adma_chan* to_ppc440spe_adma_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status ppc440spe_adma_tx_status(struct dma_chan *chan,
   dma_cookie_t cookie, struct dma_tx_state *txstate)
{
 struct ppc440spe_adma_chan *ppc440spe_chan;
 enum dma_status ret;

 ppc440spe_chan = to_ppc440spe_adma_chan(chan);
 ret = dma_cookie_status(chan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return ret;

 ppc440spe_adma_slot_cleanup(ppc440spe_chan);

 return dma_cookie_status(chan, cookie, txstate);
}
