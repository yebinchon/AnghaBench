
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_channel {int lock; int tasklet; int (* isr_handler ) (struct tegra_dma_channel*,int) ;int dma_chan; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TEGRA_APBDMA_CHAN_STATUS ;
 unsigned long TEGRA_APBDMA_STATUS_ISE_EOC ;
 int dev_info (int ,char*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct tegra_dma_channel*,int) ;
 int tasklet_schedule (int *) ;
 int tdc2dev (struct tegra_dma_channel*) ;
 unsigned long tdc_read (struct tegra_dma_channel*,int ) ;
 int tdc_write (struct tegra_dma_channel*,int ,unsigned long) ;
 int trace_tegra_dma_isr (int *,int) ;

__attribute__((used)) static irqreturn_t tegra_dma_isr(int irq, void *dev_id)
{
 struct tegra_dma_channel *tdc = dev_id;
 unsigned long status;
 unsigned long flags;

 spin_lock_irqsave(&tdc->lock, flags);

 trace_tegra_dma_isr(&tdc->dma_chan, irq);
 status = tdc_read(tdc, TEGRA_APBDMA_CHAN_STATUS);
 if (status & TEGRA_APBDMA_STATUS_ISE_EOC) {
  tdc_write(tdc, TEGRA_APBDMA_CHAN_STATUS, status);
  tdc->isr_handler(tdc, 0);
  tasklet_schedule(&tdc->tasklet);
  spin_unlock_irqrestore(&tdc->lock, flags);
  return IRQ_HANDLED;
 }

 spin_unlock_irqrestore(&tdc->lock, flags);
 dev_info(tdc2dev(tdc),
  "Interrupt already served status 0x%08lx\n", status);
 return IRQ_NONE;
}
