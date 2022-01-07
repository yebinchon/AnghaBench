
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsldma_chan {int tasklet; } ;
typedef int irqreturn_t ;


 int FSL_DMA_SR_CB ;
 int FSL_DMA_SR_CH ;
 int FSL_DMA_SR_EOCDI ;
 int FSL_DMA_SR_EOLNI ;
 int FSL_DMA_SR_PE ;
 int FSL_DMA_SR_TE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int chan_dbg (struct fsldma_chan*,char*,...) ;
 int chan_err (struct fsldma_chan*,char*,...) ;
 int dma_is_idle (struct fsldma_chan*) ;
 scalar_t__ get_bcr (struct fsldma_chan*) ;
 int get_sr (struct fsldma_chan*) ;
 int set_sr (struct fsldma_chan*,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t fsldma_chan_irq(int irq, void *data)
{
 struct fsldma_chan *chan = data;
 u32 stat;


 stat = get_sr(chan);
 set_sr(chan, stat);
 chan_dbg(chan, "irq: stat = 0x%x\n", stat);


 stat &= ~(FSL_DMA_SR_CB | FSL_DMA_SR_CH);
 if (!stat)
  return IRQ_NONE;

 if (stat & FSL_DMA_SR_TE)
  chan_err(chan, "Transfer Error!\n");






 if (stat & FSL_DMA_SR_PE) {
  chan_dbg(chan, "irq: Programming Error INT\n");
  stat &= ~FSL_DMA_SR_PE;
  if (get_bcr(chan) != 0)
   chan_err(chan, "Programming Error!\n");
 }





 if (stat & FSL_DMA_SR_EOCDI) {
  chan_dbg(chan, "irq: End-of-Chain link INT\n");
  stat &= ~FSL_DMA_SR_EOCDI;
 }






 if (stat & FSL_DMA_SR_EOLNI) {
  chan_dbg(chan, "irq: End-of-link INT\n");
  stat &= ~FSL_DMA_SR_EOLNI;
 }


 if (!dma_is_idle(chan))
  chan_err(chan, "irq: controller not idle!\n");


 if (stat)
  chan_err(chan, "irq: unhandled sr 0x%08x\n", stat);






 tasklet_schedule(&chan->tasklet);
 chan_dbg(chan, "irq: Exit\n");
 return IRQ_HANDLED;
}
