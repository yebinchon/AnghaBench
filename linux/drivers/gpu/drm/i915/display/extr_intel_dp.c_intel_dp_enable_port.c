
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int output_reg; int DP; } ;
struct intel_crtc_state {scalar_t__ has_audio; } ;
struct drm_i915_private {int dummy; } ;


 int DP_AUDIO_OUTPUT_ENABLE ;
 int DP_PORT_EN ;
 int DP_TRAINING_PATTERN_1 ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_dp_program_link_training_pattern (struct intel_dp*,int ) ;

__attribute__((used)) static void intel_dp_enable_port(struct intel_dp *intel_dp,
     const struct intel_crtc_state *old_crtc_state)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);



 intel_dp_program_link_training_pattern(intel_dp, DP_TRAINING_PATTERN_1);







 intel_dp->DP |= DP_PORT_EN;
 if (old_crtc_state->has_audio)
  intel_dp->DP |= DP_AUDIO_OUTPUT_ENABLE;

 I915_WRITE(intel_dp->output_reg, intel_dp->DP);
 POSTING_READ(intel_dp->output_reg);
}
