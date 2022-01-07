
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;
struct TYPE_3__ {int dev; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int POWER_DOMAIN_TRANSCODER (int) ;
 int POWER_DOMAIN_TRANSCODER_VDSC_PW2 ;
 int TRANSCODER_A ;
 int TRANSCODER_EDP ;
 struct drm_i915_private* to_i915 (int ) ;

enum intel_display_power_domain
intel_dsc_power_domain(const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *i915 = to_i915(crtc_state->base.crtc->dev);
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 if (INTEL_GEN(i915) >= 12 && cpu_transcoder == TRANSCODER_A)
  return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
 else if (cpu_transcoder == TRANSCODER_EDP)
  return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
 else
  return POWER_DOMAIN_TRANSCODER(cpu_transcoder);
}
