
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
 int intel_set_pch_fifo_underrun_reporting (struct drm_i915_private*,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void hsw_pre_pll_enable_crt(struct intel_encoder *encoder,
       const struct intel_crtc_state *crtc_state,
       const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);

 WARN_ON(!crtc_state->has_pch_encoder);

 intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, 0);
}
