
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct zynqmp_dma_chan {int err; int lock; scalar_t__ idle; scalar_t__ regs; } ;


 scalar_t__ ZYNQMP_DMA_IRQ_DST_ACCT ;
 scalar_t__ readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zynqmp_dma_chan_desc_cleanup (struct zynqmp_dma_chan*) ;
 int zynqmp_dma_complete_descriptor (struct zynqmp_dma_chan*) ;
 int zynqmp_dma_reset (struct zynqmp_dma_chan*) ;
 int zynqmp_dma_start_transfer (struct zynqmp_dma_chan*) ;

__attribute__((used)) static void zynqmp_dma_do_tasklet(unsigned long data)
{
 struct zynqmp_dma_chan *chan = (struct zynqmp_dma_chan *)data;
 u32 count;
 unsigned long irqflags;

 spin_lock_irqsave(&chan->lock, irqflags);

 if (chan->err) {
  zynqmp_dma_reset(chan);
  chan->err = 0;
  goto unlock;
 }

 count = readl(chan->regs + ZYNQMP_DMA_IRQ_DST_ACCT);

 while (count) {
  zynqmp_dma_complete_descriptor(chan);
  zynqmp_dma_chan_desc_cleanup(chan);
  count--;
 }

 if (chan->idle)
  zynqmp_dma_start_transfer(chan);

unlock:
 spin_unlock_irqrestore(&chan->lock, irqflags);
}
