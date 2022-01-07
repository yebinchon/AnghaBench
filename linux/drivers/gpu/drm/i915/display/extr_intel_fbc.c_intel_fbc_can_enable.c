
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_fbc {char* no_fbc_reason; scalar_t__ underrun_detected; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
struct TYPE_2__ {int enable_fbc; } ;


 TYPE_1__ i915_modparams ;
 scalar_t__ intel_vgpu_active (struct drm_i915_private*) ;

__attribute__((used)) static bool intel_fbc_can_enable(struct drm_i915_private *dev_priv)
{
 struct intel_fbc *fbc = &dev_priv->fbc;

 if (intel_vgpu_active(dev_priv)) {
  fbc->no_fbc_reason = "VGPU is active";
  return 0;
 }

 if (!i915_modparams.enable_fbc) {
  fbc->no_fbc_reason = "disabled per module param or by default";
  return 0;
 }

 if (fbc->underrun_detected) {
  fbc->no_fbc_reason = "underrun detected";
  return 0;
 }

 return 1;
}
