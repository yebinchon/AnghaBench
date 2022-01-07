
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpm_thermal; int* hpd; int* crtc_vblank_int; int* afmt; int lock; int * pflip; int * ring_int; } ;
struct radeon_device {TYPE_1__ irq; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 unsigned int RADEON_MAX_CRTCS ;
 unsigned int RADEON_MAX_HPD_PINS ;
 unsigned int RADEON_NUM_RINGS ;
 int atomic_set (int *,int ) ;
 int radeon_irq_set (struct radeon_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void radeon_driver_irq_uninstall_kms(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;
 unsigned long irqflags;
 unsigned i;

 if (rdev == ((void*)0)) {
  return;
 }
 spin_lock_irqsave(&rdev->irq.lock, irqflags);

 for (i = 0; i < RADEON_NUM_RINGS; i++)
  atomic_set(&rdev->irq.ring_int[i], 0);
 rdev->irq.dpm_thermal = 0;
 for (i = 0; i < RADEON_MAX_HPD_PINS; i++)
  rdev->irq.hpd[i] = 0;
 for (i = 0; i < RADEON_MAX_CRTCS; i++) {
  rdev->irq.crtc_vblank_int[i] = 0;
  atomic_set(&rdev->irq.pflip[i], 0);
  rdev->irq.afmt[i] = 0;
 }
 radeon_irq_set(rdev);
 spin_unlock_irqrestore(&rdev->irq.lock, irqflags);
}
