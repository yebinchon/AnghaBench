
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_adma_chan {int sconfig; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct tegra_adma_chan* to_tegra_adma_chan (struct dma_chan*) ;

__attribute__((used)) static int tegra_adma_slave_config(struct dma_chan *dc,
       struct dma_slave_config *sconfig)
{
 struct tegra_adma_chan *tdc = to_tegra_adma_chan(dc);

 memcpy(&tdc->sconfig, sconfig, sizeof(*sconfig));

 return 0;
}
