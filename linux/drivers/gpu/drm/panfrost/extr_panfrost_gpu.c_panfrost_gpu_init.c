
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmu_features; } ;
struct panfrost_device {int dev; TYPE_1__ features; } ;


 int DMA_BIT_MASK (int ) ;
 int ENODEV ;
 int FIELD_GET (int,int ) ;
 int IRQF_SHARED ;
 int dev_err (int ,char*) ;
 int devm_request_irq (int ,int,int ,int ,char*,struct panfrost_device*) ;
 int dma_set_mask_and_coherent (int ,int ) ;
 int panfrost_gpu_init_features (struct panfrost_device*) ;
 int panfrost_gpu_init_quirks (struct panfrost_device*) ;
 int panfrost_gpu_irq_handler ;
 int panfrost_gpu_power_on (struct panfrost_device*) ;
 int panfrost_gpu_soft_reset (struct panfrost_device*) ;
 int platform_get_irq_byname (int ,char*) ;
 int to_platform_device (int ) ;

int panfrost_gpu_init(struct panfrost_device *pfdev)
{
 int err, irq;

 err = panfrost_gpu_soft_reset(pfdev);
 if (err)
  return err;

 panfrost_gpu_init_features(pfdev);

 dma_set_mask_and_coherent(pfdev->dev,
  DMA_BIT_MASK(FIELD_GET(0xff00, pfdev->features.mmu_features)));

 irq = platform_get_irq_byname(to_platform_device(pfdev->dev), "gpu");
 if (irq <= 0)
  return -ENODEV;

 err = devm_request_irq(pfdev->dev, irq, panfrost_gpu_irq_handler,
          IRQF_SHARED, "gpu", pfdev);
 if (err) {
  dev_err(pfdev->dev, "failed to request gpu irq");
  return err;
 }

 panfrost_gpu_init_quirks(pfdev);
 panfrost_gpu_power_on(pfdev);

 return 0;
}
