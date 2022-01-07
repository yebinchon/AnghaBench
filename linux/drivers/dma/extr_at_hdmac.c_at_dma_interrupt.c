
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct at_dma_chan {int mask; int tasklet; int status; } ;
struct TYPE_2__ {int chancnt; int dev; } ;
struct at_dma {struct at_dma_chan* chan; TYPE_1__ dma_common; } ;
typedef int irqreturn_t ;


 int ATC_IS_ERROR ;
 int AT_DMA_BTC (int) ;
 int AT_DMA_ERR (int) ;
 int AT_DMA_RES (int) ;
 int CHDR ;
 int EBCIMR ;
 int EBCISR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_vdbg (int ,char*,int,int,int) ;
 int dma_readl (struct at_dma*,int ) ;
 int dma_writel (struct at_dma*,int ,int) ;
 int set_bit (int ,int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t at_dma_interrupt(int irq, void *dev_id)
{
 struct at_dma *atdma = (struct at_dma *)dev_id;
 struct at_dma_chan *atchan;
 int i;
 u32 status, pending, imr;
 int ret = IRQ_NONE;

 do {
  imr = dma_readl(atdma, EBCIMR);
  status = dma_readl(atdma, EBCISR);
  pending = status & imr;

  if (!pending)
   break;

  dev_vdbg(atdma->dma_common.dev,
   "interrupt: status = 0x%08x, 0x%08x, 0x%08x\n",
    status, imr, pending);

  for (i = 0; i < atdma->dma_common.chancnt; i++) {
   atchan = &atdma->chan[i];
   if (pending & (AT_DMA_BTC(i) | AT_DMA_ERR(i))) {
    if (pending & AT_DMA_ERR(i)) {

     dma_writel(atdma, CHDR,
      AT_DMA_RES(i) | atchan->mask);

     set_bit(ATC_IS_ERROR, &atchan->status);
    }
    tasklet_schedule(&atchan->tasklet);
    ret = IRQ_HANDLED;
   }
  }

 } while (pending);

 return ret;
}
