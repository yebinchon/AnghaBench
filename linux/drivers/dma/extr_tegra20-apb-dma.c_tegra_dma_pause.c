
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_dma_channel {struct tegra_dma* tdma; } ;
struct tegra_dma {TYPE_1__* chip_data; } ;
struct TYPE_2__ {scalar_t__ support_channel_pause; } ;


 int TEGRA_APBDMA_BURST_COMPLETE_TIME ;
 int TEGRA_APBDMA_CHAN_CSRE ;
 int TEGRA_APBDMA_CHAN_CSRE_PAUSE ;
 int tdc_write (struct tegra_dma_channel*,int ,int ) ;
 int tegra_dma_global_pause (struct tegra_dma_channel*,int) ;
 int udelay (int ) ;

__attribute__((used)) static void tegra_dma_pause(struct tegra_dma_channel *tdc,
 bool wait_for_burst_complete)
{
 struct tegra_dma *tdma = tdc->tdma;

 if (tdma->chip_data->support_channel_pause) {
  tdc_write(tdc, TEGRA_APBDMA_CHAN_CSRE,
    TEGRA_APBDMA_CHAN_CSRE_PAUSE);
  if (wait_for_burst_complete)
   udelay(TEGRA_APBDMA_BURST_COMPLETE_TIME);
 } else {
  tegra_dma_global_pause(tdc, wait_for_burst_complete);
 }
}
