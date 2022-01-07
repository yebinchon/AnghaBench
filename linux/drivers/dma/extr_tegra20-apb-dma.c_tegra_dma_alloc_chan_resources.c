
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_channel {int config_init; int dma_chan; struct tegra_dma* tdma; } ;
struct tegra_dma {int dev; } ;
struct dma_chan {int dummy; } ;


 int dma_cookie_init (int *) ;
 int pm_runtime_get_sync (int ) ;
 struct tegra_dma_channel* to_tegra_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int tegra_dma_alloc_chan_resources(struct dma_chan *dc)
{
 struct tegra_dma_channel *tdc = to_tegra_dma_chan(dc);
 struct tegra_dma *tdma = tdc->tdma;
 int ret;

 dma_cookie_init(&tdc->dma_chan);
 tdc->config_init = 0;

 ret = pm_runtime_get_sync(tdma->dev);
 if (ret < 0)
  return ret;

 return 0;
}
