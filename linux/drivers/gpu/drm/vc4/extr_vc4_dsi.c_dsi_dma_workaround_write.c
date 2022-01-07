
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vc4_dsi {int reg_dma_paddr; scalar_t__ reg_paddr; scalar_t__* reg_dma_mem; scalar_t__ regs; struct dma_chan* reg_dma_chan; } ;
struct dma_chan {TYPE_1__* device; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;} ;
typedef int dma_cookie_t ;
struct TYPE_2__ {struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (struct dma_chan*,scalar_t__,int ,int,int ) ;} ;


 int DRM_ERROR (char*,...) ;
 int dma_submit_error (int ) ;
 int dma_sync_wait (struct dma_chan*,int ) ;
 struct dma_async_tx_descriptor* stub1 (struct dma_chan*,scalar_t__,int ,int,int ) ;
 int stub2 (struct dma_async_tx_descriptor*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
dsi_dma_workaround_write(struct vc4_dsi *dsi, u32 offset, u32 val)
{
 struct dma_chan *chan = dsi->reg_dma_chan;
 struct dma_async_tx_descriptor *tx;
 dma_cookie_t cookie;
 int ret;


 if (!chan) {
  writel(val, dsi->regs + offset);
  return;
 }

 *dsi->reg_dma_mem = val;

 tx = chan->device->device_prep_dma_memcpy(chan,
        dsi->reg_paddr + offset,
        dsi->reg_dma_paddr,
        4, 0);
 if (!tx) {
  DRM_ERROR("Failed to set up DMA register write\n");
  return;
 }

 cookie = tx->tx_submit(tx);
 ret = dma_submit_error(cookie);
 if (ret) {
  DRM_ERROR("Failed to submit DMA: %d\n", ret);
  return;
 }
 ret = dma_sync_wait(chan, cookie);
 if (ret)
  DRM_ERROR("Failed to wait for DMA: %d\n", ret);
}
