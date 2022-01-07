
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_5__ {int dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_6__ {void* crtc_clock; } ;
struct TYPE_4__ {TYPE_3__ adjusted_mode; } ;
struct intel_crtc_state {void* port_clock; TYPE_1__ base; int output_types; } ;
struct drm_i915_private {int dummy; } ;


 int BIT (int ) ;
 int DRM_DEBUG_KMS (char*) ;
 int INTEL_OUTPUT_DSI ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 void* bxt_dsi_get_pclk (struct intel_encoder*,struct intel_crtc_state*) ;
 int bxt_dsi_get_pipe_config (struct intel_encoder*,struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (int ) ;
 void* vlv_dsi_get_pclk (struct intel_encoder*,struct intel_crtc_state*) ;

__attribute__((used)) static void intel_dsi_get_config(struct intel_encoder *encoder,
     struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 pclk;
 DRM_DEBUG_KMS("\n");

 pipe_config->output_types |= BIT(INTEL_OUTPUT_DSI);

 if (IS_GEN9_LP(dev_priv)) {
  bxt_dsi_get_pipe_config(encoder, pipe_config);
  pclk = bxt_dsi_get_pclk(encoder, pipe_config);
 } else {
  pclk = vlv_dsi_get_pclk(encoder, pipe_config);
 }

 if (pclk) {
  pipe_config->base.adjusted_mode.crtc_clock = pclk;
  pipe_config->port_clock = pclk;
 }
}
