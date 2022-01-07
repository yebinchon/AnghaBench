
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int AUDIO_OUTPUT_ENABLE (int) ;
 int HSW_AUD_PIN_ELD_CP_VLD ;
 int I915_READ (int ) ;
 int POWER_DOMAIN_AUDIO ;
 int TRANSCODER_EDP ;
 int intel_display_power_is_enabled (struct drm_i915_private*,int ) ;

__attribute__((used)) static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,
           enum transcoder cpu_transcoder)
{
 if (cpu_transcoder == TRANSCODER_EDP)
  return 0;

 if (!intel_display_power_is_enabled(dev_priv, POWER_DOMAIN_AUDIO))
  return 0;

 return I915_READ(HSW_AUD_PIN_ELD_CP_VLD) &
  AUDIO_OUTPUT_ENABLE(cpu_transcoder);
}
