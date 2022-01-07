
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_5__ {int crtc; } ;
struct intel_crtc_state {int has_pch_encoder; TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct TYPE_6__ {int (* fdi_link_train ) (struct intel_crtc*,struct intel_crtc_state const*) ;} ;
struct drm_i915_private {TYPE_3__ display; } ;
struct drm_connector_state {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int WARN_ON (int) ;
 int intel_ddi_enable_pipe_clock (struct intel_crtc_state const*) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 int stub1 (struct intel_crtc*,struct intel_crtc_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void hsw_pre_enable_crt(struct intel_encoder *encoder,
          const struct intel_crtc_state *crtc_state,
          const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 enum pipe pipe = crtc->pipe;

 WARN_ON(!crtc_state->has_pch_encoder);

 intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, 0);

 dev_priv->display.fdi_link_train(crtc, crtc_state);

 intel_ddi_enable_pipe_clock(crtc_state);
}
