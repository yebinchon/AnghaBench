
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* crtc_vblank_int; int lock; } ;
struct radeon_device {int num_crtc; TYPE_1__ irq; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int DRM_ERROR (char*,int) ;
 int radeon_irq_set (struct radeon_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void radeon_disable_vblank_kms(struct drm_device *dev, int crtc)
{
 struct radeon_device *rdev = dev->dev_private;
 unsigned long irqflags;

 if (crtc < 0 || crtc >= rdev->num_crtc) {
  DRM_ERROR("Invalid crtc %d\n", crtc);
  return;
 }

 spin_lock_irqsave(&rdev->irq.lock, irqflags);
 rdev->irq.crtc_vblank_int[crtc] = 0;
 radeon_irq_set(rdev);
 spin_unlock_irqrestore(&rdev->irq.lock, irqflags);
}
