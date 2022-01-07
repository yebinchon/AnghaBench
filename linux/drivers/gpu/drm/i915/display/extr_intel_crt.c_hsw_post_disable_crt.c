
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int has_pch_encoder; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int PIPE_A ;
 int WARN_ON (int) ;
 int intel_ddi_disable_pipe_clock (struct intel_crtc_state const*) ;
 int intel_ddi_fdi_post_disable (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_set_pch_fifo_underrun_reporting (struct drm_i915_private*,int ,int) ;
 int lpt_disable_iclkip (struct drm_i915_private*) ;
 int lpt_disable_pch_transcoder (struct drm_i915_private*) ;
 int pch_post_disable_crt (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void hsw_post_disable_crt(struct intel_encoder *encoder,
     const struct intel_crtc_state *old_crtc_state,
     const struct drm_connector_state *old_conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);

 intel_ddi_disable_pipe_clock(old_crtc_state);

 pch_post_disable_crt(encoder, old_crtc_state, old_conn_state);

 lpt_disable_pch_transcoder(dev_priv);
 lpt_disable_iclkip(dev_priv);

 intel_ddi_fdi_post_disable(encoder, old_crtc_state, old_conn_state);

 WARN_ON(!old_crtc_state->has_pch_encoder);

 intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, 1);
}
