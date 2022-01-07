
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_adma_chan {unsigned int sreq_index; } ;
struct tegra_adma {int dma_dev; int dev; } ;
struct of_phandle_args {int args_count; unsigned int* args; } ;
struct of_dma {struct tegra_adma* of_dma_data; } ;
struct dma_chan {int dummy; } ;


 int dev_err (int ,char*) ;
 struct dma_chan* dma_get_any_slave_channel (int *) ;
 struct tegra_adma_chan* to_tegra_adma_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_chan *tegra_dma_of_xlate(struct of_phandle_args *dma_spec,
        struct of_dma *ofdma)
{
 struct tegra_adma *tdma = ofdma->of_dma_data;
 struct tegra_adma_chan *tdc;
 struct dma_chan *chan;
 unsigned int sreq_index;

 if (dma_spec->args_count != 1)
  return ((void*)0);

 sreq_index = dma_spec->args[0];

 if (sreq_index == 0) {
  dev_err(tdma->dev, "DMA request must not be 0\n");
  return ((void*)0);
 }

 chan = dma_get_any_slave_channel(&tdma->dma_dev);
 if (!chan)
  return ((void*)0);

 tdc = to_tegra_adma_chan(chan);
 tdc->sreq_index = sreq_index;

 return chan;
}
