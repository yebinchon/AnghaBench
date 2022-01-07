
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_channel {scalar_t__ slave_id; int config_init; int dma_sconfig; int pending_sg_req; } ;
struct dma_slave_config {scalar_t__ slave_id; scalar_t__ device_fc; } ;
struct dma_chan {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ TEGRA_APBDMA_CSR_REQ_SEL_MASK ;
 scalar_t__ TEGRA_APBDMA_SLAVE_ID_INVALID ;
 int dev_err (int ,char*) ;
 int list_empty (int *) ;
 int memcpy (int *,struct dma_slave_config*,int) ;
 int tdc2dev (struct tegra_dma_channel*) ;
 struct tegra_dma_channel* to_tegra_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int tegra_dma_slave_config(struct dma_chan *dc,
  struct dma_slave_config *sconfig)
{
 struct tegra_dma_channel *tdc = to_tegra_dma_chan(dc);

 if (!list_empty(&tdc->pending_sg_req)) {
  dev_err(tdc2dev(tdc), "Configuration not allowed\n");
  return -EBUSY;
 }

 memcpy(&tdc->dma_sconfig, sconfig, sizeof(*sconfig));
 if (tdc->slave_id == TEGRA_APBDMA_SLAVE_ID_INVALID &&
     sconfig->device_fc) {
  if (sconfig->slave_id > TEGRA_APBDMA_CSR_REQ_SEL_MASK)
   return -EINVAL;
  tdc->slave_id = sconfig->slave_id;
 }
 tdc->config_init = 1;
 return 0;
}
