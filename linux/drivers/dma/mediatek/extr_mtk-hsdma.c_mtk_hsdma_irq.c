
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdma_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MTK_HSDMA_INT_ENABLE ;
 int MTK_HSDMA_INT_RXDONE ;
 int mtk_dma_clr (struct mtk_hsdma_device*,int ,int ) ;
 int mtk_hsdma_free_rooms_in_ring (struct mtk_hsdma_device*) ;

__attribute__((used)) static irqreturn_t mtk_hsdma_irq(int irq, void *devid)
{
 struct mtk_hsdma_device *hsdma = devid;





 mtk_dma_clr(hsdma, MTK_HSDMA_INT_ENABLE, MTK_HSDMA_INT_RXDONE);

 mtk_hsdma_free_rooms_in_ring(hsdma);

 return IRQ_HANDLED;
}
