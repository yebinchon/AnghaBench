
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dma_dev {scalar_t__ base; } ;


 scalar_t__ SUNXI_H3_DMA_GATE ;
 int SUNXI_H3_DMA_GATE_ENABLE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sun6i_enable_clock_autogate_h3(struct sun6i_dma_dev *sdev)
{
 writel(SUNXI_H3_DMA_GATE_ENABLE, sdev->base + SUNXI_H3_DMA_GATE);
}
