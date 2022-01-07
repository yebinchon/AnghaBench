
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_adma_chan {int dummy; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int iop_adma_slot_cleanup (struct iop_adma_chan*) ;
 struct iop_adma_chan* to_iop_adma_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status iop_adma_status(struct dma_chan *chan,
     dma_cookie_t cookie,
     struct dma_tx_state *txstate)
{
 struct iop_adma_chan *iop_chan = to_iop_adma_chan(chan);
 int ret;

 ret = dma_cookie_status(chan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return ret;

 iop_adma_slot_cleanup(iop_chan);

 return dma_cookie_status(chan, cookie, txstate);
}
