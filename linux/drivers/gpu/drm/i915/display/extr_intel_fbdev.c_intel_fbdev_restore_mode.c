
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_fbdev {int helper; int vma; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct intel_fbdev* fbdev; } ;


 scalar_t__ drm_fb_helper_restore_fbdev_mode_unlocked (int *) ;
 int intel_fbdev_invalidate (struct intel_fbdev*) ;
 int intel_fbdev_sync (struct intel_fbdev*) ;
 TYPE_1__* to_i915 (struct drm_device*) ;

void intel_fbdev_restore_mode(struct drm_device *dev)
{
 struct intel_fbdev *ifbdev = to_i915(dev)->fbdev;

 if (!ifbdev)
  return;

 intel_fbdev_sync(ifbdev);
 if (!ifbdev->vma)
  return;

 if (drm_fb_helper_restore_fbdev_mode_unlocked(&ifbdev->helper) == 0)
  intel_fbdev_invalidate(ifbdev);
}
