
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_dev {int dma_completion; int dev; int * dma_lch; int dma_maxburst; scalar_t__ phys_base; } ;
struct dma_slave_config {int device_fc; int dst_maxburst; int src_maxburst; int dst_addr_width; scalar_t__ dst_addr; int direction; } ;
typedef int dma_conf ;


 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EBUSY ;
 scalar_t__ HASH_DIN ;
 int dev_err (int ,char*) ;
 int dma_release_channel (int *) ;
 int * dma_request_slave_channel (int ,char*) ;
 int dmaengine_slave_config (int *,struct dma_slave_config*) ;
 int init_completion (int *) ;
 int memset (struct dma_slave_config*,int ,int) ;

__attribute__((used)) static int stm32_hash_dma_init(struct stm32_hash_dev *hdev)
{
 struct dma_slave_config dma_conf;
 int err;

 memset(&dma_conf, 0, sizeof(dma_conf));

 dma_conf.direction = DMA_MEM_TO_DEV;
 dma_conf.dst_addr = hdev->phys_base + HASH_DIN;
 dma_conf.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 dma_conf.src_maxburst = hdev->dma_maxburst;
 dma_conf.dst_maxburst = hdev->dma_maxburst;
 dma_conf.device_fc = 0;

 hdev->dma_lch = dma_request_slave_channel(hdev->dev, "in");
 if (!hdev->dma_lch) {
  dev_err(hdev->dev, "Couldn't acquire a slave DMA channel.\n");
  return -EBUSY;
 }

 err = dmaengine_slave_config(hdev->dma_lch, &dma_conf);
 if (err) {
  dma_release_channel(hdev->dma_lch);
  hdev->dma_lch = ((void*)0);
  dev_err(hdev->dev, "Couldn't configure DMA slave.\n");
  return err;
 }

 init_completion(&hdev->dma_completion);

 return 0;
}
