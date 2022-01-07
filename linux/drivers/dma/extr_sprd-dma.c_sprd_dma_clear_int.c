
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_dma_chn {int dummy; } ;


 int SPRD_DMA_CHN_INTC ;
 int SPRD_DMA_INT_CLR_OFFSET ;
 int SPRD_DMA_INT_MASK ;
 int sprd_dma_chn_update (struct sprd_dma_chn*,int ,int,int) ;

__attribute__((used)) static void sprd_dma_clear_int(struct sprd_dma_chn *schan)
{
 sprd_dma_chn_update(schan, SPRD_DMA_CHN_INTC,
       SPRD_DMA_INT_MASK << SPRD_DMA_INT_CLR_OFFSET,
       SPRD_DMA_INT_MASK << SPRD_DMA_INT_CLR_OFFSET);
}
