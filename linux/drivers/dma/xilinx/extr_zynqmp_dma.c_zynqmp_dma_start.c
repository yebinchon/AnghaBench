
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_dma_chan {int idle; scalar_t__ regs; } ;


 scalar_t__ ZYNQMP_DMA_CTRL2 ;
 int ZYNQMP_DMA_ENABLE ;
 scalar_t__ ZYNQMP_DMA_IER ;
 int ZYNQMP_DMA_INT_EN_DEFAULT_MASK ;
 scalar_t__ ZYNQMP_DMA_TOTAL_BYTE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void zynqmp_dma_start(struct zynqmp_dma_chan *chan)
{
 writel(ZYNQMP_DMA_INT_EN_DEFAULT_MASK, chan->regs + ZYNQMP_DMA_IER);
 writel(0, chan->regs + ZYNQMP_DMA_TOTAL_BYTE);
 chan->idle = 0;
 writel(ZYNQMP_DMA_ENABLE, chan->regs + ZYNQMP_DMA_CTRL2);
}
