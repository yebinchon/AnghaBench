
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_engine {struct sdma_channel* channel; scalar_t__ regs; } ;
struct sdma_desc {int vd; } ;
struct TYPE_2__ {int lock; } ;
struct sdma_channel {int flags; TYPE_1__ vc; struct sdma_desc* desc; } ;
typedef int irqreturn_t ;


 int IMX_DMA_SG_LOOP ;
 int IRQ_HANDLED ;
 scalar_t__ SDMA_H_INTR ;
 int __clear_bit (int,unsigned long*) ;
 int fls (unsigned long) ;
 int mxc_sdma_handle_channel_normal (struct sdma_channel*) ;
 unsigned long readl_relaxed (scalar_t__) ;
 int sdma_start_desc (struct sdma_channel*) ;
 int sdma_update_channel_loop (struct sdma_channel*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vchan_cookie_complete (int *) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t sdma_int_handler(int irq, void *dev_id)
{
 struct sdma_engine *sdma = dev_id;
 unsigned long stat;

 stat = readl_relaxed(sdma->regs + SDMA_H_INTR);
 writel_relaxed(stat, sdma->regs + SDMA_H_INTR);

 stat &= ~1;

 while (stat) {
  int channel = fls(stat) - 1;
  struct sdma_channel *sdmac = &sdma->channel[channel];
  struct sdma_desc *desc;

  spin_lock(&sdmac->vc.lock);
  desc = sdmac->desc;
  if (desc) {
   if (sdmac->flags & IMX_DMA_SG_LOOP) {
    sdma_update_channel_loop(sdmac);
   } else {
    mxc_sdma_handle_channel_normal(sdmac);
    vchan_cookie_complete(&desc->vd);
    sdma_start_desc(sdmac);
   }
  }

  spin_unlock(&sdmac->vc.lock);
  __clear_bit(channel, &stat);
 }

 return IRQ_HANDLED;
}
