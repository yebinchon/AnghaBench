
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct dma_slave_config {int direction; int src_addr_width; int dst_addr_width; scalar_t__ src_addr; scalar_t__ dst_addr; void* dst_maxburst; void* src_maxburst; } ;
struct dma_async_tx_descriptor {struct atmel_aes_dev* callback_param; int * callback; } ;
struct atmel_aes_dma {int chan; int sg_len; int sg; } ;
struct atmel_aes_dev {scalar_t__ phys_base; struct atmel_aes_dma dst; struct atmel_aes_dma src; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;
typedef int * dma_async_tx_callback ;
typedef int config ;


 scalar_t__ AES_IDATAR (int ) ;
 scalar_t__ AES_ODATAR (int ) ;
 int DMA_CTRL_ACK ;


 int DMA_PREP_INTERRUPT ;
 int EINVAL ;
 int ENOMEM ;
 int * atmel_aes_dma_callback ;
 int dma_async_issue_pending (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,int ,int ,int,int) ;
 int dmaengine_slave_config (int ,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int memset (struct dma_slave_config*,int ,int) ;

__attribute__((used)) static int atmel_aes_dma_transfer_start(struct atmel_aes_dev *dd,
     enum dma_slave_buswidth addr_width,
     enum dma_transfer_direction dir,
     u32 maxburst)
{
 struct dma_async_tx_descriptor *desc;
 struct dma_slave_config config;
 dma_async_tx_callback callback;
 struct atmel_aes_dma *dma;
 int err;

 memset(&config, 0, sizeof(config));
 config.direction = dir;
 config.src_addr_width = addr_width;
 config.dst_addr_width = addr_width;
 config.src_maxburst = maxburst;
 config.dst_maxburst = maxburst;

 switch (dir) {
 case 128:
  dma = &dd->src;
  callback = ((void*)0);
  config.dst_addr = dd->phys_base + AES_IDATAR(0);
  break;

 case 129:
  dma = &dd->dst;
  callback = atmel_aes_dma_callback;
  config.src_addr = dd->phys_base + AES_ODATAR(0);
  break;

 default:
  return -EINVAL;
 }

 err = dmaengine_slave_config(dma->chan, &config);
 if (err)
  return err;

 desc = dmaengine_prep_slave_sg(dma->chan, dma->sg, dma->sg_len, dir,
           DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc)
  return -ENOMEM;

 desc->callback = callback;
 desc->callback_param = dd;
 dmaengine_submit(desc);
 dma_async_issue_pending(dma->chan);

 return 0;
}
