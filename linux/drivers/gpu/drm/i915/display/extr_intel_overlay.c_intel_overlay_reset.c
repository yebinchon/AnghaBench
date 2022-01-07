
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_overlay {int active; int * crtc; scalar_t__ old_yscale; scalar_t__ old_xscale; } ;
struct drm_i915_private {struct intel_overlay* overlay; } ;



void intel_overlay_reset(struct drm_i915_private *dev_priv)
{
 struct intel_overlay *overlay = dev_priv->overlay;

 if (!overlay)
  return;

 overlay->old_xscale = 0;
 overlay->old_yscale = 0;
 overlay->crtc = ((void*)0);
 overlay->active = 0;
}
