
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct dma_device {int chancnt; struct device* dev; int cap_mask; } ;
struct ioatdma_device {int completion_pool; struct pci_dev* pdev; struct dma_device dma_dev; } ;


 int DMA_MEMCPY ;
 int ENODEV ;
 int ENOMEM ;
 int SMP_CACHE_BYTES ;
 int dev_err (struct device*,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_pool_create (char*,struct device*,int,int ,int ) ;
 int dma_pool_destroy (int ) ;
 int ioat3_dma_self_test (struct ioatdma_device*) ;
 int ioat_disable_interrupts (struct ioatdma_device*) ;
 int ioat_dma_setup_interrupts (struct ioatdma_device*) ;
 int ioat_enumerate_channels (struct ioatdma_device*) ;

__attribute__((used)) static int ioat_probe(struct ioatdma_device *ioat_dma)
{
 int err = -ENODEV;
 struct dma_device *dma = &ioat_dma->dma_dev;
 struct pci_dev *pdev = ioat_dma->pdev;
 struct device *dev = &pdev->dev;

 ioat_dma->completion_pool = dma_pool_create("completion_pool", dev,
          sizeof(u64),
          SMP_CACHE_BYTES,
          SMP_CACHE_BYTES);

 if (!ioat_dma->completion_pool) {
  err = -ENOMEM;
  goto err_out;
 }

 ioat_enumerate_channels(ioat_dma);

 dma_cap_set(DMA_MEMCPY, dma->cap_mask);
 dma->dev = &pdev->dev;

 if (!dma->chancnt) {
  dev_err(dev, "channel enumeration error\n");
  goto err_setup_interrupts;
 }

 err = ioat_dma_setup_interrupts(ioat_dma);
 if (err)
  goto err_setup_interrupts;

 err = ioat3_dma_self_test(ioat_dma);
 if (err)
  goto err_self_test;

 return 0;

err_self_test:
 ioat_disable_interrupts(ioat_dma);
err_setup_interrupts:
 dma_pool_destroy(ioat_dma->completion_pool);
err_out:
 return err;
}
