
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_dma_chan {int lock; scalar_t__ regs; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ ZYNQMP_DMA_IDS ;
 int ZYNQMP_DMA_IDS_DEFAULT_MASK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct zynqmp_dma_chan* to_chan (struct dma_chan*) ;
 int writel (int ,scalar_t__) ;
 int zynqmp_dma_free_descriptors (struct zynqmp_dma_chan*) ;

__attribute__((used)) static int zynqmp_dma_device_terminate_all(struct dma_chan *dchan)
{
 struct zynqmp_dma_chan *chan = to_chan(dchan);
 unsigned long irqflags;

 spin_lock_irqsave(&chan->lock, irqflags);
 writel(ZYNQMP_DMA_IDS_DEFAULT_MASK, chan->regs + ZYNQMP_DMA_IDS);
 zynqmp_dma_free_descriptors(chan);
 spin_unlock_irqrestore(&chan->lock, irqflags);

 return 0;
}
