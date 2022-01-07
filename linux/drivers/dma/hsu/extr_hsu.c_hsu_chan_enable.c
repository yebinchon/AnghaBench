
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hsu_dma_chan {scalar_t__ direction; } ;


 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ DMA_MEM_TO_DEV ;
 int HSU_CH_CR ;
 int HSU_CH_CR_CHA ;
 int HSU_CH_CR_CHD ;
 int hsu_chan_writel (struct hsu_dma_chan*,int ,int ) ;

__attribute__((used)) static inline void hsu_chan_enable(struct hsu_dma_chan *hsuc)
{
 u32 cr = HSU_CH_CR_CHA;

 if (hsuc->direction == DMA_MEM_TO_DEV)
  cr &= ~HSU_CH_CR_CHD;
 else if (hsuc->direction == DMA_DEV_TO_MEM)
  cr |= HSU_CH_CR_CHD;

 hsu_chan_writel(hsuc, HSU_CH_CR, cr);
}
