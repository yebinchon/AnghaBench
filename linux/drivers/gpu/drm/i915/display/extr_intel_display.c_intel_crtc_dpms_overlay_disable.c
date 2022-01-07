
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_crtc {scalar_t__ overlay; TYPE_1__ base; } ;
struct drm_device {int struct_mutex; } ;


 int intel_overlay_switch_off (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void intel_crtc_dpms_overlay_disable(struct intel_crtc *intel_crtc)
{
 if (intel_crtc->overlay) {
  struct drm_device *dev = intel_crtc->base.dev;

  mutex_lock(&dev->struct_mutex);
  (void) intel_overlay_switch_off(intel_crtc->overlay);
  mutex_unlock(&dev->struct_mutex);
 }




}
