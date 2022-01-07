
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_v2_device {scalar_t__ dma_base; } ;


 int MV_XOR_V2_DMA_IMSG_THRD_MASK ;
 scalar_t__ MV_XOR_V2_DMA_IMSG_THRD_OFF ;
 int MV_XOR_V2_DMA_IMSG_TIMER_EN ;
 int MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK ;
 scalar_t__ MV_XOR_V2_DMA_IMSG_TMOT ;
 int MV_XOR_V2_DONE_IMSG_THRD ;
 int MV_XOR_V2_TIMER_THRD ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline
void mv_xor_v2_enable_imsg_thrd(struct mv_xor_v2_device *xor_dev)
{
 u32 reg;


 reg = readl(xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_THRD_OFF);
 reg &= ~MV_XOR_V2_DMA_IMSG_THRD_MASK;
 reg |= MV_XOR_V2_DONE_IMSG_THRD;
 reg |= MV_XOR_V2_DMA_IMSG_TIMER_EN;
 writel(reg, xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_THRD_OFF);


 reg = readl(xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_TMOT);
 reg &= ~MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK;
 reg |= MV_XOR_V2_TIMER_THRD;
 writel(reg, xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_TMOT);
}
