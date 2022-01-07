
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_overlay {int last_flip; int reg_bo; int active; } ;
struct drm_i915_private {int overlay; } ;


 int WARN_ON (int ) ;
 struct intel_overlay* fetch_and_zero (int *) ;
 int i915_active_fini (int *) ;
 int i915_gem_object_put (int ) ;
 int kfree (struct intel_overlay*) ;

void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
{
 struct intel_overlay *overlay;

 overlay = fetch_and_zero(&dev_priv->overlay);
 if (!overlay)
  return;






 WARN_ON(overlay->active);

 i915_gem_object_put(overlay->reg_bo);
 i915_active_fini(&overlay->last_flip);

 kfree(overlay);
}
