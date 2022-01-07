
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma {int dummy; } ;


 int CFG ;
 int DW_CFG_DMA_EN ;
 int dma_writel (struct dw_dma*,int ,int ) ;

void do_dw_dma_on(struct dw_dma *dw)
{
 dma_writel(dw, CFG, DW_CFG_DMA_EN);
}
