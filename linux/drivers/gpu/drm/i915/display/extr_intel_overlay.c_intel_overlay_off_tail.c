
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_overlay {int active; TYPE_1__* crtc; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int * overlay; } ;


 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 int i830_overlay_clock_gating (struct drm_i915_private*,int) ;
 int intel_overlay_release_old_vma (struct intel_overlay*) ;

__attribute__((used)) static void intel_overlay_off_tail(struct intel_overlay *overlay)
{
 struct drm_i915_private *dev_priv = overlay->i915;

 intel_overlay_release_old_vma(overlay);

 overlay->crtc->overlay = ((void*)0);
 overlay->crtc = ((void*)0);
 overlay->active = 0;

 if (IS_I830(dev_priv))
  i830_overlay_clock_gating(dev_priv, 1);
}
