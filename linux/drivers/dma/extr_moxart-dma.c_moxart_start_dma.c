
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct moxart_chan {scalar_t__ base; } ;


 int APB_DMA_ENABLE ;
 int APB_DMA_ERR_INT_EN ;
 int APB_DMA_FIN_INT_EN ;
 scalar_t__ REG_OFF_CTRL ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void moxart_start_dma(struct moxart_chan *ch)
{
 u32 ctrl;

 ctrl = readl(ch->base + REG_OFF_CTRL);
 ctrl |= (APB_DMA_ENABLE | APB_DMA_FIN_INT_EN | APB_DMA_ERR_INT_EN);
 writel(ctrl, ch->base + REG_OFF_CTRL);
}
