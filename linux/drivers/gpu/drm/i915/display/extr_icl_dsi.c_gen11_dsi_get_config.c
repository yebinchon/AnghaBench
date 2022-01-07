
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dev; } ;
struct intel_encoder {TYPE_3__ base; } ;
struct intel_dsi {int pclk; scalar_t__ dual_link; } ;
struct TYPE_4__ {int crtc_clock; } ;
struct TYPE_5__ {TYPE_1__ adjusted_mode; int crtc; } ;
struct intel_crtc_state {int pipe_bpp; int output_types; TYPE_2__ base; int dpll_hw_state; int port_clock; } ;
struct intel_crtc {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int BIT (int ) ;
 int INTEL_OUTPUT_DSI ;
 int bdw_get_pipemisc_bpp (struct intel_crtc*) ;
 int cnl_calc_wrpll_link (struct drm_i915_private*,int *) ;
 struct intel_dsi* enc_to_intel_dsi (TYPE_3__*) ;
 int gen11_dsi_get_timings (struct intel_encoder*,struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void gen11_dsi_get_config(struct intel_encoder *encoder,
     struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_crtc *crtc = to_intel_crtc(pipe_config->base.crtc);
 struct intel_dsi *intel_dsi = enc_to_intel_dsi(&encoder->base);


 pipe_config->port_clock =
  cnl_calc_wrpll_link(dev_priv, &pipe_config->dpll_hw_state);

 pipe_config->base.adjusted_mode.crtc_clock = intel_dsi->pclk;
 if (intel_dsi->dual_link)
  pipe_config->base.adjusted_mode.crtc_clock *= 2;

 gen11_dsi_get_timings(encoder, pipe_config);
 pipe_config->output_types |= BIT(INTEL_OUTPUT_DSI);
 pipe_config->pipe_bpp = bdw_get_pipemisc_bpp(crtc);
}
