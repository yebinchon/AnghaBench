
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int cpu_transcoder; } ;
struct drm_i915_private {int dummy; } ;


 int HSW_TVIDEO_DIP_CTL (int ) ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int VIDEO_DIP_ENABLE_AVI_HSW ;
 int VIDEO_DIP_ENABLE_DRM_GLK ;
 int VIDEO_DIP_ENABLE_GCP_HSW ;
 int VIDEO_DIP_ENABLE_GMP_HSW ;
 int VIDEO_DIP_ENABLE_SPD_HSW ;
 int VIDEO_DIP_ENABLE_VSC_HSW ;
 int VIDEO_DIP_ENABLE_VS_HSW ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
      const struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 val = I915_READ(HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
 u32 mask;

 mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
  VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
  VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);

 if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
  mask |= VIDEO_DIP_ENABLE_DRM_GLK;

 return val & mask;
}
