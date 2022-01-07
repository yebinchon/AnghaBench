
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_dma_chn {scalar_t__ chn_base; } ;


 scalar_t__ SPRD_DMA_CHN_CFG ;
 int SPRD_DMA_CHN_EN ;
 int readl (scalar_t__) ;
 int sprd_dma_disable_chn (struct sprd_dma_chn*) ;
 int sprd_dma_pause_resume (struct sprd_dma_chn*,int) ;

__attribute__((used)) static void sprd_dma_stop_and_disable(struct sprd_dma_chn *schan)
{
 u32 cfg = readl(schan->chn_base + SPRD_DMA_CHN_CFG);

 if (!(cfg & SPRD_DMA_CHN_EN))
  return;

 sprd_dma_pause_resume(schan, 1);
 sprd_dma_disable_chn(schan);
}
