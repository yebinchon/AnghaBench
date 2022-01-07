
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_adma_chan {int * desc; scalar_t__ chan_addr; } ;


 int ADMA_CH_CMD ;
 scalar_t__ ADMA_CH_STATUS ;
 unsigned int ADMA_CH_STATUS_XFER_EN ;
 int dev_err (int ,char*) ;
 int kfree (int *) ;
 int readl ;
 scalar_t__ readx_poll_timeout_atomic (int ,scalar_t__,unsigned int,int,int,int) ;
 int tdc2dev (struct tegra_adma_chan*) ;
 int tdma_ch_write (struct tegra_adma_chan*,int ,int ) ;
 int tegra_adma_irq_clear (struct tegra_adma_chan*) ;

__attribute__((used)) static void tegra_adma_stop(struct tegra_adma_chan *tdc)
{
 unsigned int status;


 tdma_ch_write(tdc, ADMA_CH_CMD, 0);


 tegra_adma_irq_clear(tdc);

 if (readx_poll_timeout_atomic(readl, tdc->chan_addr + ADMA_CH_STATUS,
   status, !(status & ADMA_CH_STATUS_XFER_EN),
   20, 10000)) {
  dev_err(tdc2dev(tdc), "unable to stop DMA channel\n");
  return;
 }

 kfree(tdc->desc);
 tdc->desc = ((void*)0);
}
