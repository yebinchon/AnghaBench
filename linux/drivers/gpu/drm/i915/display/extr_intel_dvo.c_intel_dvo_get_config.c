
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int dev; } ;
struct intel_encoder {TYPE_4__ base; } ;
struct TYPE_5__ {int dvo_reg; } ;
struct intel_dvo {TYPE_1__ dev; } ;
struct TYPE_6__ {int flags; int crtc_clock; } ;
struct TYPE_7__ {TYPE_2__ adjusted_mode; } ;
struct intel_crtc_state {int port_clock; TYPE_3__ base; int output_types; } ;
struct drm_i915_private {int dummy; } ;


 int BIT (int ) ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int DVO_HSYNC_ACTIVE_HIGH ;
 int DVO_VSYNC_ACTIVE_HIGH ;
 int I915_READ (int ) ;
 int INTEL_OUTPUT_DVO ;
 struct intel_dvo* enc_to_dvo (struct intel_encoder*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_dvo_get_config(struct intel_encoder *encoder,
     struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 u32 tmp, flags = 0;

 pipe_config->output_types |= BIT(INTEL_OUTPUT_DVO);

 tmp = I915_READ(intel_dvo->dev.dvo_reg);
 if (tmp & DVO_HSYNC_ACTIVE_HIGH)
  flags |= DRM_MODE_FLAG_PHSYNC;
 else
  flags |= DRM_MODE_FLAG_NHSYNC;
 if (tmp & DVO_VSYNC_ACTIVE_HIGH)
  flags |= DRM_MODE_FLAG_PVSYNC;
 else
  flags |= DRM_MODE_FLAG_NVSYNC;

 pipe_config->base.adjusted_mode.flags |= flags;

 pipe_config->base.adjusted_mode.crtc_clock = pipe_config->port_clock;
}
