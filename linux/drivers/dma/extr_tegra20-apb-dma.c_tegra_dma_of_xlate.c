
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_channel {int slave_id; } ;
struct tegra_dma {int dma_dev; int dev; } ;
struct of_phandle_args {int * args; } ;
struct of_dma {struct tegra_dma* of_dma_data; } ;
struct dma_chan {int dummy; } ;


 int TEGRA_APBDMA_CSR_REQ_SEL_MASK ;
 int dev_err (int ,char*,int ) ;
 struct dma_chan* dma_get_any_slave_channel (int *) ;
 struct tegra_dma_channel* to_tegra_dma_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_chan *tegra_dma_of_xlate(struct of_phandle_args *dma_spec,
        struct of_dma *ofdma)
{
 struct tegra_dma *tdma = ofdma->of_dma_data;
 struct dma_chan *chan;
 struct tegra_dma_channel *tdc;

 if (dma_spec->args[0] > TEGRA_APBDMA_CSR_REQ_SEL_MASK) {
  dev_err(tdma->dev, "Invalid slave id: %d\n", dma_spec->args[0]);
  return ((void*)0);
 }

 chan = dma_get_any_slave_channel(&tdma->dma_dev);
 if (!chan)
  return ((void*)0);

 tdc = to_tegra_dma_chan(chan);
 tdc->slave_id = dma_spec->args[0];

 return chan;
}
