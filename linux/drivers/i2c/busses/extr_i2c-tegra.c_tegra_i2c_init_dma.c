
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_i2c_dev {int dev; int dma_phys; int * dma_buf; int dma_buf_size; struct dma_chan* tx_dma_chan; struct dma_chan* rx_dma_chan; TYPE_1__* hw; } ;
struct dma_chan {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int has_apb_dma; } ;


 int CONFIG_TEGRA20_APB_DMA ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct dma_chan*) ;
 int PTR_ERR (struct dma_chan*) ;
 int __GFP_NOWARN ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int * dma_alloc_coherent (int ,int ,int *,int) ;
 struct dma_chan* dma_request_slave_channel_reason (int ,char*) ;
 int tegra_i2c_release_dma (struct tegra_i2c_dev*) ;

__attribute__((used)) static int tegra_i2c_init_dma(struct tegra_i2c_dev *i2c_dev)
{
 struct dma_chan *chan;
 u32 *dma_buf;
 dma_addr_t dma_phys;
 int err;

 if (!i2c_dev->hw->has_apb_dma)
  return 0;

 if (!IS_ENABLED(CONFIG_TEGRA20_APB_DMA)) {
  dev_dbg(i2c_dev->dev, "Support for APB DMA not enabled!\n");
  return 0;
 }

 chan = dma_request_slave_channel_reason(i2c_dev->dev, "rx");
 if (IS_ERR(chan)) {
  err = PTR_ERR(chan);
  goto err_out;
 }

 i2c_dev->rx_dma_chan = chan;

 chan = dma_request_slave_channel_reason(i2c_dev->dev, "tx");
 if (IS_ERR(chan)) {
  err = PTR_ERR(chan);
  goto err_out;
 }

 i2c_dev->tx_dma_chan = chan;

 dma_buf = dma_alloc_coherent(i2c_dev->dev, i2c_dev->dma_buf_size,
         &dma_phys, GFP_KERNEL | __GFP_NOWARN);
 if (!dma_buf) {
  dev_err(i2c_dev->dev, "failed to allocate the DMA buffer\n");
  err = -ENOMEM;
  goto err_out;
 }

 i2c_dev->dma_buf = dma_buf;
 i2c_dev->dma_phys = dma_phys;
 return 0;

err_out:
 tegra_i2c_release_dma(i2c_dev);
 if (err != -EPROBE_DEFER) {
  dev_err(i2c_dev->dev, "cannot use DMA: %d\n", err);
  dev_err(i2c_dev->dev, "falling back to PIO\n");
  return 0;
 }

 return err;
}
