
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_fbdev {int cookie; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct intel_fbdev* fbdev; } ;


 int async_schedule (int ,struct intel_fbdev*) ;
 int intel_fbdev_initial_config ;
 TYPE_1__* to_i915 (struct drm_device*) ;

void intel_fbdev_initial_config_async(struct drm_device *dev)
{
 struct intel_fbdev *ifbdev = to_i915(dev)->fbdev;

 if (!ifbdev)
  return;

 ifbdev->cookie = async_schedule(intel_fbdev_initial_config, ifbdev);
}
