
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct drm_device {int dev; struct radeon_device* dev_private; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 int pm_runtime_mark_last_busy (int ) ;
 scalar_t__ radeon_irq_process (struct radeon_device*) ;

irqreturn_t radeon_driver_irq_handler_kms(int irq, void *arg)
{
 struct drm_device *dev = (struct drm_device *) arg;
 struct radeon_device *rdev = dev->dev_private;
 irqreturn_t ret;

 ret = radeon_irq_process(rdev);
 if (ret == IRQ_HANDLED)
  pm_runtime_mark_last_busy(dev->dev);
 return ret;
}
