
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_lspcon {scalar_t__ active; } ;
struct intel_encoder {int base; } ;
struct intel_digital_port {int (* set_infoframes ) (struct intel_encoder*,int ,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int has_infoframe; int has_pch_encoder; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int INTEL_OUTPUT_HDMI ;
 int WARN_ON (int ) ;
 struct intel_digital_port* enc_to_dig_port (int *) ;
 struct intel_lspcon* enc_to_intel_lspcon (int *) ;
 int icl_map_plls_to_ports (struct intel_encoder*,struct intel_crtc_state const*) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 int intel_ddi_pre_enable_dp (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_ddi_pre_enable_hdmi (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 int stub1 (struct intel_encoder*,int ,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void intel_ddi_pre_enable(struct intel_encoder *encoder,
     const struct intel_crtc_state *crtc_state,
     const struct drm_connector_state *conn_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 WARN_ON(crtc_state->has_pch_encoder);

 if (INTEL_GEN(dev_priv) >= 11)
  icl_map_plls_to_ports(encoder, crtc_state);

 intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, 1);

 if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
  intel_ddi_pre_enable_hdmi(encoder, crtc_state, conn_state);
 } else {
  struct intel_lspcon *lspcon =
    enc_to_intel_lspcon(&encoder->base);

  intel_ddi_pre_enable_dp(encoder, crtc_state, conn_state);
  if (lspcon->active) {
   struct intel_digital_port *dig_port =
     enc_to_dig_port(&encoder->base);

   dig_port->set_infoframes(encoder,
       crtc_state->has_infoframe,
       crtc_state, conn_state);
  }
 }
}
