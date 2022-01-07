
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int port_clock; int min_voltage_level; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;

void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
      struct intel_crtc_state *crtc_state)
{
 if (INTEL_GEN(dev_priv) >= 11 && crtc_state->port_clock > 594000)
  crtc_state->min_voltage_level = 1;
 else if (IS_CANNONLAKE(dev_priv) && crtc_state->port_clock > 594000)
  crtc_state->min_voltage_level = 2;
}
