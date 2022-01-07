
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_i2c_dev {int dev; int dma_phys; struct dma_chan* tx_dma_chan; struct dma_chan* rx_dma_chan; scalar_t__ msg_read; int dma_complete; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct tegra_i2c_dev* callback_param; int callback; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int EINVAL ;
 int dev_dbg (int ,char*,size_t) ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (struct dma_chan*) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_single (struct dma_chan*,int ,size_t,int,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int reinit_completion (int *) ;
 int tegra_i2c_dma_complete ;

__attribute__((used)) static int tegra_i2c_dma_submit(struct tegra_i2c_dev *i2c_dev, size_t len)
{
 struct dma_async_tx_descriptor *dma_desc;
 enum dma_transfer_direction dir;
 struct dma_chan *chan;

 dev_dbg(i2c_dev->dev, "starting DMA for length: %zu\n", len);
 reinit_completion(&i2c_dev->dma_complete);
 dir = i2c_dev->msg_read ? DMA_DEV_TO_MEM : DMA_MEM_TO_DEV;
 chan = i2c_dev->msg_read ? i2c_dev->rx_dma_chan : i2c_dev->tx_dma_chan;
 dma_desc = dmaengine_prep_slave_single(chan, i2c_dev->dma_phys,
            len, dir, DMA_PREP_INTERRUPT |
            DMA_CTRL_ACK);
 if (!dma_desc) {
  dev_err(i2c_dev->dev, "failed to get DMA descriptor\n");
  return -EINVAL;
 }

 dma_desc->callback = tegra_i2c_dma_complete;
 dma_desc->callback_param = i2c_dev;
 dmaengine_submit(dma_desc);
 dma_async_issue_pending(chan);
 return 0;
}
