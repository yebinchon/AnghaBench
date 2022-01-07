
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_dma_device {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct stm32_dma_chan {TYPE_1__ vchan; int id; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int STM32_DMA_FEI ;
 int STM32_DMA_HTI ;
 int STM32_DMA_SCR (int ) ;
 int STM32_DMA_SCR_EN ;
 int STM32_DMA_SCR_TCIE ;
 int STM32_DMA_SFCR (int ) ;
 int STM32_DMA_SFCR_FEIE ;
 int STM32_DMA_TCI ;
 int chan2dev (struct stm32_dma_chan*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct stm32_dma_device* stm32_dma_get_dev (struct stm32_dma_chan*) ;
 int stm32_dma_handle_chan_done (struct stm32_dma_chan*) ;
 int stm32_dma_irq_clear (struct stm32_dma_chan*,int) ;
 int stm32_dma_irq_status (struct stm32_dma_chan*) ;
 int stm32_dma_read (struct stm32_dma_device*,int ) ;

__attribute__((used)) static irqreturn_t stm32_dma_chan_irq(int irq, void *devid)
{
 struct stm32_dma_chan *chan = devid;
 struct stm32_dma_device *dmadev = stm32_dma_get_dev(chan);
 u32 status, scr, sfcr;

 spin_lock(&chan->vchan.lock);

 status = stm32_dma_irq_status(chan);
 scr = stm32_dma_read(dmadev, STM32_DMA_SCR(chan->id));
 sfcr = stm32_dma_read(dmadev, STM32_DMA_SFCR(chan->id));

 if (status & STM32_DMA_TCI) {
  stm32_dma_irq_clear(chan, STM32_DMA_TCI);
  if (scr & STM32_DMA_SCR_TCIE)
   stm32_dma_handle_chan_done(chan);
  status &= ~STM32_DMA_TCI;
 }
 if (status & STM32_DMA_HTI) {
  stm32_dma_irq_clear(chan, STM32_DMA_HTI);
  status &= ~STM32_DMA_HTI;
 }
 if (status & STM32_DMA_FEI) {
  stm32_dma_irq_clear(chan, STM32_DMA_FEI);
  status &= ~STM32_DMA_FEI;
  if (sfcr & STM32_DMA_SFCR_FEIE) {
   if (!(scr & STM32_DMA_SCR_EN))
    dev_err(chan2dev(chan), "FIFO Error\n");
   else
    dev_dbg(chan2dev(chan), "FIFO over/underrun\n");
  }
 }
 if (status) {
  stm32_dma_irq_clear(chan, status);
  dev_err(chan2dev(chan), "DMA error: status=0x%08x\n", status);
  if (!(scr & STM32_DMA_SCR_EN))
   dev_err(chan2dev(chan), "chan disabled by HW\n");
 }

 spin_unlock(&chan->vchan.lock);

 return IRQ_HANDLED;
}
