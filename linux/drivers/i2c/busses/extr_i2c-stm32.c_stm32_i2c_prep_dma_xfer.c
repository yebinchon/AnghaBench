
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct stm32_i2c_dma {int dma_data_dir; int dma_len; int dma_buf; TYPE_2__* chan_using; int dma_complete; int dma_transfer_dir; TYPE_2__* chan_tx; TYPE_2__* chan_rx; } ;
struct dma_async_tx_descriptor {void* callback_param; int callback; } ;
struct device {int dummy; } ;
typedef int dma_async_tx_callback ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_FROM_DEVICE ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int dma_async_issue_pending (TYPE_2__*) ;
 int dma_map_single (struct device*,int *,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_submit_error (int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_single (TYPE_2__*,int ,int ,int ,int ) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int reinit_completion (int *) ;

int stm32_i2c_prep_dma_xfer(struct device *dev, struct stm32_i2c_dma *dma,
       bool rd_wr, u32 len, u8 *buf,
       dma_async_tx_callback callback,
       void *dma_async_param)
{
 struct dma_async_tx_descriptor *txdesc;
 struct device *chan_dev;
 int ret;

 if (rd_wr) {
  dma->chan_using = dma->chan_rx;
  dma->dma_transfer_dir = DMA_DEV_TO_MEM;
  dma->dma_data_dir = DMA_FROM_DEVICE;
 } else {
  dma->chan_using = dma->chan_tx;
  dma->dma_transfer_dir = DMA_MEM_TO_DEV;
  dma->dma_data_dir = DMA_TO_DEVICE;
 }

 dma->dma_len = len;
 chan_dev = dma->chan_using->device->dev;

 dma->dma_buf = dma_map_single(chan_dev, buf, dma->dma_len,
          dma->dma_data_dir);
 if (dma_mapping_error(chan_dev, dma->dma_buf)) {
  dev_err(dev, "DMA mapping failed\n");
  return -EINVAL;
 }

 txdesc = dmaengine_prep_slave_single(dma->chan_using, dma->dma_buf,
          dma->dma_len,
          dma->dma_transfer_dir,
          DMA_PREP_INTERRUPT);
 if (!txdesc) {
  dev_err(dev, "Not able to get desc for DMA xfer\n");
  ret = -EINVAL;
  goto err;
 }

 reinit_completion(&dma->dma_complete);

 txdesc->callback = callback;
 txdesc->callback_param = dma_async_param;
 ret = dma_submit_error(dmaengine_submit(txdesc));
 if (ret < 0) {
  dev_err(dev, "DMA submit failed\n");
  goto err;
 }

 dma_async_issue_pending(dma->chan_using);

 return 0;

err:
 dma_unmap_single(chan_dev, dma->dma_buf, dma->dma_len,
    dma->dma_data_dir);
 return ret;
}
