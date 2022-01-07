
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_dma_chn {scalar_t__ chn_base; } ;


 scalar_t__ SPRD_DMA_CHN_SRC_ADDR ;
 scalar_t__ SPRD_DMA_CHN_WARP_PTR ;
 unsigned long SPRD_DMA_HIGH_ADDR_MASK ;
 unsigned long SPRD_DMA_HIGH_ADDR_OFFSET ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static unsigned long sprd_dma_get_src_addr(struct sprd_dma_chn *schan)
{
 unsigned long addr, addr_high;

 addr = readl(schan->chn_base + SPRD_DMA_CHN_SRC_ADDR);
 addr_high = readl(schan->chn_base + SPRD_DMA_CHN_WARP_PTR) &
      SPRD_DMA_HIGH_ADDR_MASK;

 return addr | (addr_high << SPRD_DMA_HIGH_ADDR_OFFSET);
}
