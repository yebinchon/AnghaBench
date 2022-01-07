
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {scalar_t__ limited_color_range; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);





 return crtc_state->limited_color_range &&
  (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv) ||
   IS_GEN_RANGE(dev_priv, 9, 10));
}
