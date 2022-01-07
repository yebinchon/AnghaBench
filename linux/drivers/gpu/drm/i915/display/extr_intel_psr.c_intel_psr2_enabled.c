
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ compression_enable; } ;
struct intel_crtc_state {int has_psr2; TYPE_1__ dsc_params; } ;
struct TYPE_4__ {int debug; } ;
struct drm_i915_private {TYPE_2__ psr; } ;




 int I915_PSR_DEBUG_MODE_MASK ;
 int WARN_ON (int) ;

__attribute__((used)) static bool intel_psr2_enabled(struct drm_i915_private *dev_priv,
          const struct intel_crtc_state *crtc_state)
{

 WARN_ON(crtc_state->dsc_params.compression_enable &&
  crtc_state->has_psr2);

 switch (dev_priv->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
 case 129:
 case 128:
  return 0;
 default:
  return crtc_state->has_psr2;
 }
}
