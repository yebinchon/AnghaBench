
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dmm {TYPE_1__* wa_dma_chan; int dev; } ;
struct dma_device {struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (TYPE_1__*,int ,int ,int,int ) ;} ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;} ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;
typedef int dma_addr_t ;
struct TYPE_5__ {struct dma_device* device; } ;


 int DMA_COMPLETE ;
 int EIO ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (TYPE_1__*) ;
 scalar_t__ dma_submit_error (int ) ;
 int dma_sync_wait (TYPE_1__*,int ) ;
 int dmaengine_terminate_all (TYPE_1__*) ;
 struct dma_async_tx_descriptor* stub1 (TYPE_1__*,int ,int ,int,int ) ;
 int stub2 (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static int dmm_dma_copy(struct dmm *dmm, dma_addr_t src, dma_addr_t dst)
{
 struct dma_device *dma_dev = dmm->wa_dma_chan->device;
 struct dma_async_tx_descriptor *tx;
 enum dma_status status;
 dma_cookie_t cookie;

 tx = dma_dev->device_prep_dma_memcpy(dmm->wa_dma_chan, dst, src, 4, 0);
 if (!tx) {
  dev_err(dmm->dev, "Failed to prepare DMA memcpy\n");
  return -EIO;
 }

 cookie = tx->tx_submit(tx);
 if (dma_submit_error(cookie)) {
  dev_err(dmm->dev, "Failed to do DMA tx_submit\n");
  return -EIO;
 }

 dma_async_issue_pending(dmm->wa_dma_chan);
 status = dma_sync_wait(dmm->wa_dma_chan, cookie);
 if (status != DMA_COMPLETE)
  dev_err(dmm->dev, "i878 wa DMA copy failure\n");

 dmaengine_terminate_all(dmm->wa_dma_chan);
 return 0;
}
