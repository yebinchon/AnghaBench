
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynqmp_dma_chan {scalar_t__ regs; } ;


 int ZYNQMP_DMA_BYTE_CNT_OVRFL ;
 scalar_t__ ZYNQMP_DMA_IRQ_DST_ACCT ;
 int ZYNQMP_DMA_IRQ_DST_ACCT_ERR ;
 scalar_t__ ZYNQMP_DMA_IRQ_SRC_ACCT ;
 int ZYNQMP_DMA_IRQ_SRC_ACCT_ERR ;
 scalar_t__ ZYNQMP_DMA_TOTAL_BYTE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void zynqmp_dma_handle_ovfl_int(struct zynqmp_dma_chan *chan, u32 status)
{
 if (status & ZYNQMP_DMA_BYTE_CNT_OVRFL)
  writel(0, chan->regs + ZYNQMP_DMA_TOTAL_BYTE);
 if (status & ZYNQMP_DMA_IRQ_DST_ACCT_ERR)
  readl(chan->regs + ZYNQMP_DMA_IRQ_DST_ACCT);
 if (status & ZYNQMP_DMA_IRQ_SRC_ACCT_ERR)
  readl(chan->regs + ZYNQMP_DMA_IRQ_SRC_ACCT);
}
