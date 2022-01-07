
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_dma_chan {int tasklet; int err_status; } ;
struct TYPE_2__ {int chancnt; int dev; } ;
struct pch_dma {struct pch_dma_chan* channels; TYPE_1__ dma; } ;
typedef int irqreturn_t ;


 int DMA_STATUS0_ERR (int) ;
 int DMA_STATUS2_ERR (int) ;
 int DMA_STATUS_IRQ (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int STS0 ;
 int STS2 ;
 int dev_dbg (int ,char*,int) ;
 int dma_readl (struct pch_dma*,int ) ;
 int dma_writel (struct pch_dma*,int ,int) ;
 int set_bit (int ,int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t pd_irq(int irq, void *devid)
{
 struct pch_dma *pd = (struct pch_dma *)devid;
 struct pch_dma_chan *pd_chan;
 u32 sts0;
 u32 sts2;
 int i;
 int ret0 = IRQ_NONE;
 int ret2 = IRQ_NONE;

 sts0 = dma_readl(pd, STS0);
 sts2 = dma_readl(pd, STS2);

 dev_dbg(pd->dma.dev, "pd_irq sts0: %x\n", sts0);

 for (i = 0; i < pd->dma.chancnt; i++) {
  pd_chan = &pd->channels[i];

  if (i < 8) {
   if (sts0 & DMA_STATUS_IRQ(i)) {
    if (sts0 & DMA_STATUS0_ERR(i))
     set_bit(0, &pd_chan->err_status);

    tasklet_schedule(&pd_chan->tasklet);
    ret0 = IRQ_HANDLED;
   }
  } else {
   if (sts2 & DMA_STATUS_IRQ(i - 8)) {
    if (sts2 & DMA_STATUS2_ERR(i))
     set_bit(0, &pd_chan->err_status);

    tasklet_schedule(&pd_chan->tasklet);
    ret2 = IRQ_HANDLED;
   }
  }
 }


 if (ret0)
  dma_writel(pd, STS0, sts0);
 if (ret2)
  dma_writel(pd, STS2, sts2);

 return ret0 | ret2;
}
