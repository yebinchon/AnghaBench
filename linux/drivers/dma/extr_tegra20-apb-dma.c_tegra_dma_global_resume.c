
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_channel {struct tegra_dma* tdma; } ;
struct tegra_dma {scalar_t__ global_pause_count; int global_lock; } ;


 int TEGRA_APBDMA_GENERAL ;
 int TEGRA_APBDMA_GENERAL_ENABLE ;
 scalar_t__ WARN_ON (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tdma_write (struct tegra_dma*,int ,int ) ;

__attribute__((used)) static void tegra_dma_global_resume(struct tegra_dma_channel *tdc)
{
 struct tegra_dma *tdma = tdc->tdma;

 spin_lock(&tdma->global_lock);

 if (WARN_ON(tdc->tdma->global_pause_count == 0))
  goto out;

 if (--tdc->tdma->global_pause_count == 0)
  tdma_write(tdma, TEGRA_APBDMA_GENERAL,
      TEGRA_APBDMA_GENERAL_ENABLE);

out:
 spin_unlock(&tdma->global_lock);
}
