
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ deferred_setup; } ;
struct intel_fbdev {int hpd_waiting; TYPE_2__ helper; scalar_t__ vma; int hpd_lock; int hpd_suspended; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {struct intel_fbdev* fbdev; } ;


 int drm_fb_helper_hotplug_event (TYPE_2__*) ;
 int intel_fbdev_sync (struct intel_fbdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_i915 (struct drm_device*) ;

void intel_fbdev_output_poll_changed(struct drm_device *dev)
{
 struct intel_fbdev *ifbdev = to_i915(dev)->fbdev;
 bool send_hpd;

 if (!ifbdev)
  return;

 intel_fbdev_sync(ifbdev);

 mutex_lock(&ifbdev->hpd_lock);
 send_hpd = !ifbdev->hpd_suspended;
 ifbdev->hpd_waiting = 1;
 mutex_unlock(&ifbdev->hpd_lock);

 if (send_hpd && (ifbdev->vma || ifbdev->helper.deferred_setup))
  drm_fb_helper_hotplug_event(&ifbdev->helper);
}
