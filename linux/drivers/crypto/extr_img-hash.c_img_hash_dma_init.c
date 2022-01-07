
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_hash_dev {int dma_lch; int dev; int bus_addr; } ;
struct dma_slave_config {int device_fc; int dst_maxburst; int dst_addr_width; int dst_addr; int direction; } ;


 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EBUSY ;
 int EINVAL ;
 int IMG_HASH_DMA_BURST ;
 int dev_err (int ,char*) ;
 int dma_release_channel (int ) ;
 int dma_request_slave_channel (int ,char*) ;
 int dmaengine_slave_config (int ,struct dma_slave_config*) ;

__attribute__((used)) static int img_hash_dma_init(struct img_hash_dev *hdev)
{
 struct dma_slave_config dma_conf;
 int err = -EINVAL;

 hdev->dma_lch = dma_request_slave_channel(hdev->dev, "tx");
 if (!hdev->dma_lch) {
  dev_err(hdev->dev, "Couldn't acquire a slave DMA channel.\n");
  return -EBUSY;
 }
 dma_conf.direction = DMA_MEM_TO_DEV;
 dma_conf.dst_addr = hdev->bus_addr;
 dma_conf.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 dma_conf.dst_maxburst = IMG_HASH_DMA_BURST;
 dma_conf.device_fc = 0;

 err = dmaengine_slave_config(hdev->dma_lch, &dma_conf);
 if (err) {
  dev_err(hdev->dev, "Couldn't configure DMA slave.\n");
  dma_release_channel(hdev->dma_lch);
  return err;
 }

 return 0;
}
