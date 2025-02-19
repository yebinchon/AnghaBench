
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct atmel_sha_dev* callback_param; int callback; } ;
struct atmel_sha_dma {int nents; struct scatterlist* sg; struct dma_chan* chan; struct dma_slave_config dma_conf; } ;
struct atmel_sha_dev {int dev; int resume; struct atmel_sha_dma dma_lch_in; } ;
typedef int dma_cookie_t ;
typedef int atmel_sha_fn_t ;


 int DMA_CTRL_ACK ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 int ENOMEM ;
 int atmel_sha_complete (struct atmel_sha_dev*,int) ;
 int atmel_sha_dma_callback2 ;
 int dma_async_issue_pending (struct dma_chan*) ;
 unsigned int dma_map_sg (int ,struct scatterlist*,int ,int ) ;
 int dma_submit_error (int ) ;
 int dma_unmap_sg (int ,struct scatterlist*,int ,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,struct scatterlist*,unsigned int,int ,int) ;
 int dmaengine_slave_config (struct dma_chan*,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static int atmel_sha_dma_start(struct atmel_sha_dev *dd,
          struct scatterlist *src,
          size_t len,
          atmel_sha_fn_t resume)
{
 struct atmel_sha_dma *dma = &dd->dma_lch_in;
 struct dma_slave_config *config = &dma->dma_conf;
 struct dma_chan *chan = dma->chan;
 struct dma_async_tx_descriptor *desc;
 dma_cookie_t cookie;
 unsigned int sg_len;
 int err;

 dd->resume = resume;





 dma->sg = src;
 sg_len = dma_map_sg(dd->dev, dma->sg, dma->nents, DMA_TO_DEVICE);
 if (!sg_len) {
  err = -ENOMEM;
  goto exit;
 }

 config->src_maxburst = 16;
 config->dst_maxburst = 16;
 err = dmaengine_slave_config(chan, config);
 if (err)
  goto unmap_sg;

 desc = dmaengine_prep_slave_sg(chan, dma->sg, sg_len, DMA_MEM_TO_DEV,
           DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc) {
  err = -ENOMEM;
  goto unmap_sg;
 }

 desc->callback = atmel_sha_dma_callback2;
 desc->callback_param = dd;
 cookie = dmaengine_submit(desc);
 err = dma_submit_error(cookie);
 if (err)
  goto unmap_sg;

 dma_async_issue_pending(chan);

 return -EINPROGRESS;

unmap_sg:
 dma_unmap_sg(dd->dev, dma->sg, dma->nents, DMA_TO_DEVICE);
exit:
 return atmel_sha_complete(dd, err);
}
