
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_channel {struct tegra_dma* tdma; } ;
struct tegra_dma {scalar_t__ global_pause_count; int global_lock; } ;


 int TEGRA_APBDMA_BURST_COMPLETE_TIME ;
 int TEGRA_APBDMA_GENERAL ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tdma_write (struct tegra_dma*,int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void tegra_dma_global_pause(struct tegra_dma_channel *tdc,
 bool wait_for_burst_complete)
{
 struct tegra_dma *tdma = tdc->tdma;

 spin_lock(&tdma->global_lock);

 if (tdc->tdma->global_pause_count == 0) {
  tdma_write(tdma, TEGRA_APBDMA_GENERAL, 0);
  if (wait_for_burst_complete)
   udelay(TEGRA_APBDMA_BURST_COMPLETE_TIME);
 }

 tdc->tdma->global_pause_count++;

 spin_unlock(&tdma->global_lock);
}
