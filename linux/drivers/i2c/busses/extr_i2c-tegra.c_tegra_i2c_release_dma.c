
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_i2c_dev {int * rx_dma_chan; int * tx_dma_chan; int * dma_buf; int dma_phys; int dma_buf_size; int dev; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int dma_release_channel (int *) ;

__attribute__((used)) static void tegra_i2c_release_dma(struct tegra_i2c_dev *i2c_dev)
{
 if (i2c_dev->dma_buf) {
  dma_free_coherent(i2c_dev->dev, i2c_dev->dma_buf_size,
      i2c_dev->dma_buf, i2c_dev->dma_phys);
  i2c_dev->dma_buf = ((void*)0);
 }

 if (i2c_dev->tx_dma_chan) {
  dma_release_channel(i2c_dev->tx_dma_chan);
  i2c_dev->tx_dma_chan = ((void*)0);
 }

 if (i2c_dev->rx_dma_chan) {
  dma_release_channel(i2c_dev->rx_dma_chan);
  i2c_dev->rx_dma_chan = ((void*)0);
 }
}
