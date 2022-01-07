
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct TYPE_5__ {int crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_6__ {int pipe; } ;


 int I915_READ (int ) ;
 int VIDEO_DIP_ENABLE ;
 int VIDEO_DIP_ENABLE_AVI ;
 int VIDEO_DIP_ENABLE_GAMUT ;
 int VIDEO_DIP_ENABLE_GCP ;
 int VIDEO_DIP_ENABLE_SPD ;
 int VIDEO_DIP_ENABLE_VENDOR ;
 int VIDEO_DIP_PORT (int ) ;
 int VIDEO_DIP_PORT_MASK ;
 int VLV_TVIDEO_DIP_CTL (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 TYPE_3__* to_intel_crtc (int ) ;

__attribute__((used)) static u32 vlv_infoframes_enabled(struct intel_encoder *encoder,
      const struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum pipe pipe = to_intel_crtc(pipe_config->base.crtc)->pipe;
 u32 val = I915_READ(VLV_TVIDEO_DIP_CTL(pipe));

 if ((val & VIDEO_DIP_ENABLE) == 0)
  return 0;

 if ((val & VIDEO_DIP_PORT_MASK) != VIDEO_DIP_PORT(encoder->port))
  return 0;

 return val & (VIDEO_DIP_ENABLE_AVI |
        VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
        VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
}
