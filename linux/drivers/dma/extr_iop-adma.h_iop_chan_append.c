
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iop_adma_chan {int dummy; } ;


 int DMA_CCR (struct iop_adma_chan*) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static inline void iop_chan_append(struct iop_adma_chan *chan)
{
 u32 dma_chan_ctrl;

 dma_chan_ctrl = __raw_readl(DMA_CCR(chan));
 dma_chan_ctrl |= 0x2;
 __raw_writel(dma_chan_ctrl, DMA_CCR(chan));
}
