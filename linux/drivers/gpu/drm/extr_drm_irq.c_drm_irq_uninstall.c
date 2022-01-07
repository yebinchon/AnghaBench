
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_vblank_crtc {int queue; int enabled; } ;
struct drm_device {int irq_enabled; int num_crtcs; int irq; TYPE_1__* driver; int pdev; int vbl_lock; struct drm_vblank_crtc* vblank; } ;
struct TYPE_2__ {int (* irq_uninstall ) (struct drm_device*) ;} ;


 int DRIVER_LEGACY ;
 int DRIVER_MODESET ;
 int DRM_DEBUG (char*,int ) ;
 int EINVAL ;
 int WARN_ON (scalar_t__) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_vblank_disable_and_save (struct drm_device*,int) ;
 int free_irq (int ,struct drm_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct drm_device*) ;
 int vga_client_register (int ,int *,int *,int *) ;
 int wake_up (int *) ;

int drm_irq_uninstall(struct drm_device *dev)
{
 unsigned long irqflags;
 bool irq_enabled;
 int i;

 irq_enabled = dev->irq_enabled;
 dev->irq_enabled = 0;







 if (dev->num_crtcs) {
  spin_lock_irqsave(&dev->vbl_lock, irqflags);
  for (i = 0; i < dev->num_crtcs; i++) {
   struct drm_vblank_crtc *vblank = &dev->vblank[i];

   if (!vblank->enabled)
    continue;

   WARN_ON(drm_core_check_feature(dev, DRIVER_MODESET));

   drm_vblank_disable_and_save(dev, i);
   wake_up(&vblank->queue);
  }
  spin_unlock_irqrestore(&dev->vbl_lock, irqflags);
 }

 if (!irq_enabled)
  return -EINVAL;

 DRM_DEBUG("irq=%d\n", dev->irq);

 if (drm_core_check_feature(dev, DRIVER_LEGACY))
  vga_client_register(dev->pdev, ((void*)0), ((void*)0), ((void*)0));

 if (dev->driver->irq_uninstall)
  dev->driver->irq_uninstall(dev);

 free_irq(dev->irq, dev);

 return 0;
}
