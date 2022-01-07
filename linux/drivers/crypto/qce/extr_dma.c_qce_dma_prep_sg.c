
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {void* callback_param; int callback; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef int dma_cookie_t ;
typedef int dma_async_tx_callback ;


 int EINVAL ;
 int dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,struct scatterlist*,int,int,unsigned long) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static int qce_dma_prep_sg(struct dma_chan *chan, struct scatterlist *sg,
      int nents, unsigned long flags,
      enum dma_transfer_direction dir,
      dma_async_tx_callback cb, void *cb_param)
{
 struct dma_async_tx_descriptor *desc;
 dma_cookie_t cookie;

 if (!sg || !nents)
  return -EINVAL;

 desc = dmaengine_prep_slave_sg(chan, sg, nents, dir, flags);
 if (!desc)
  return -EINVAL;

 desc->callback = cb;
 desc->callback_param = cb_param;
 cookie = dmaengine_submit(desc);

 return dma_submit_error(cookie);
}
