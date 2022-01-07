
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dev; } ;


 int ENODEV ;
 int IRQF_SHARED ;
 int dev_err (int ,char*) ;
 int devm_request_threaded_irq (int ,int,int ,int ,int ,char*,struct panfrost_device*) ;
 int panfrost_mmu_irq_handler ;
 int panfrost_mmu_irq_handler_thread ;
 int platform_get_irq_byname (int ,char*) ;
 int to_platform_device (int ) ;

int panfrost_mmu_init(struct panfrost_device *pfdev)
{
 int err, irq;

 irq = platform_get_irq_byname(to_platform_device(pfdev->dev), "mmu");
 if (irq <= 0)
  return -ENODEV;

 err = devm_request_threaded_irq(pfdev->dev, irq, panfrost_mmu_irq_handler,
     panfrost_mmu_irq_handler_thread,
     IRQF_SHARED, "mmu", pfdev);

 if (err) {
  dev_err(pfdev->dev, "failed to request mmu irq");
  return err;
 }

 return 0;
}
