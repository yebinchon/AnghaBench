
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct imxdma_engine {int dev; } ;
struct imxdma_channel {int channel; int dma_tasklet; struct imxdma_engine* imxdma; } ;


 int DMA_CCR (int) ;
 int dev_dbg (int ,char*,int) ;
 struct imxdma_channel* from_timer (int ,struct timer_list*,int ) ;
 int imx_dmav1_writel (struct imxdma_engine*,int ,int ) ;
 struct imxdma_channel* imxdmac ;
 int tasklet_schedule (int *) ;
 int watchdog ;

__attribute__((used)) static void imxdma_watchdog(struct timer_list *t)
{
 struct imxdma_channel *imxdmac = from_timer(imxdmac, t, watchdog);
 struct imxdma_engine *imxdma = imxdmac->imxdma;
 int channel = imxdmac->channel;

 imx_dmav1_writel(imxdma, 0, DMA_CCR(channel));


 tasklet_schedule(&imxdmac->dma_tasklet);
 dev_dbg(imxdma->dev, "channel %d: watchdog timeout!\n",
  imxdmac->channel);
}
