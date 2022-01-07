
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int irq_enabled; int irq; } ;


 int EBUSY ;
 int IRQF_SHARED ;
 int VMWGFX_DRIVER_NAME ;
 int request_threaded_irq (int,int ,int ,int ,int ,struct drm_device*) ;
 int vmw_irq_handler ;
 int vmw_irq_preinstall (struct drm_device*) ;
 int vmw_thread_fn ;

int vmw_irq_install(struct drm_device *dev, int irq)
{
 int ret;

 if (dev->irq_enabled)
  return -EBUSY;

 vmw_irq_preinstall(dev);

 ret = request_threaded_irq(irq, vmw_irq_handler, vmw_thread_fn,
       IRQF_SHARED, VMWGFX_DRIVER_NAME, dev);
 if (ret < 0)
  return ret;

 dev->irq_enabled = 1;
 dev->irq = irq;

 return ret;
}
