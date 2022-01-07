
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct intel_crtc_state {scalar_t__ cpu_transcoder; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ TRANSCODER_A ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;

__attribute__((used)) static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
      const struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);

 return INTEL_GEN(dev_priv) >= 11 &&
  pipe_config->cpu_transcoder != TRANSCODER_A;
}
