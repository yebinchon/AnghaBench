
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dev; struct amdgpu_device* dev_private; } ;
struct TYPE_2__ {int ih; } ;
struct amdgpu_device {TYPE_1__ irq; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ amdgpu_ih_process (struct amdgpu_device*,int *) ;
 int pm_runtime_mark_last_busy (int ) ;

irqreturn_t amdgpu_irq_handler(int irq, void *arg)
{
 struct drm_device *dev = (struct drm_device *) arg;
 struct amdgpu_device *adev = dev->dev_private;
 irqreturn_t ret;

 ret = amdgpu_ih_process(adev, &adev->irq.ih);
 if (ret == IRQ_HANDLED)
  pm_runtime_mark_last_busy(dev->dev);
 return ret;
}
