
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int VIDEO_DIP_CTL ;
 int VIDEO_DIP_ENABLE ;
 int VIDEO_DIP_ENABLE_AVI ;
 int VIDEO_DIP_ENABLE_SPD ;
 int VIDEO_DIP_ENABLE_VENDOR ;
 int VIDEO_DIP_PORT (int ) ;
 int VIDEO_DIP_PORT_MASK ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 g4x_infoframes_enabled(struct intel_encoder *encoder,
      const struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 val = I915_READ(VIDEO_DIP_CTL);

 if ((val & VIDEO_DIP_ENABLE) == 0)
  return 0;

 if ((val & VIDEO_DIP_PORT_MASK) != VIDEO_DIP_PORT(encoder->port))
  return 0;

 return val & (VIDEO_DIP_ENABLE_AVI |
        VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_SPD);
}
