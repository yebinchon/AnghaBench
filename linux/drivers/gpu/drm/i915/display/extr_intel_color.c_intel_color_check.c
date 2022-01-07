
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct TYPE_6__ {int (* color_check ) (struct intel_crtc_state*) ;} ;
struct drm_i915_private {TYPE_3__ display; } ;
struct TYPE_4__ {int dev; } ;


 int stub1 (struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (int ) ;

int intel_color_check(struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);

 return dev_priv->display.color_check(crtc_state);
}
