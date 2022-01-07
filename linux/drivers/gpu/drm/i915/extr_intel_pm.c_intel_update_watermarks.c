
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct TYPE_4__ {int (* update_wm ) (struct intel_crtc*) ;} ;
struct drm_i915_private {TYPE_2__ display; } ;


 int stub1 (struct intel_crtc*) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_update_watermarks(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

 if (dev_priv->display.update_wm)
  dev_priv->display.update_wm(crtc);
}
