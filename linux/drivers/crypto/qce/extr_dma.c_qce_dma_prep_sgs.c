
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct qce_dma_data {struct dma_chan* txchan; struct dma_chan* rxchan; } ;
struct dma_chan {int dummy; } ;
typedef int * dma_async_tx_callback ;


 unsigned long DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 unsigned long DMA_PREP_INTERRUPT ;
 int qce_dma_prep_sg (struct dma_chan*,struct scatterlist*,int,unsigned long,int ,int *,void*) ;

int qce_dma_prep_sgs(struct qce_dma_data *dma, struct scatterlist *rx_sg,
       int rx_nents, struct scatterlist *tx_sg, int tx_nents,
       dma_async_tx_callback cb, void *cb_param)
{
 struct dma_chan *rxchan = dma->rxchan;
 struct dma_chan *txchan = dma->txchan;
 unsigned long flags = DMA_PREP_INTERRUPT | DMA_CTRL_ACK;
 int ret;

 ret = qce_dma_prep_sg(rxchan, rx_sg, rx_nents, flags, DMA_MEM_TO_DEV,
        ((void*)0), ((void*)0));
 if (ret)
  return ret;

 return qce_dma_prep_sg(txchan, tx_sg, tx_nents, flags, DMA_DEV_TO_MEM,
          cb, cb_param);
}
