
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {int has_pch_encoder; TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_MODE_DPMS_ON ;
 int PIPE_A ;
 int WARN_ON (int) ;
 int intel_crt_set_dpms (struct intel_encoder*,struct intel_crtc_state const*,int ) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 int intel_set_pch_fifo_underrun_reporting (struct drm_i915_private*,int ,int) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void hsw_enable_crt(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state,
      const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 enum pipe pipe = crtc->pipe;

 WARN_ON(!crtc_state->has_pch_encoder);

 intel_crt_set_dpms(encoder, crtc_state, DRM_MODE_DPMS_ON);

 intel_wait_for_vblank(dev_priv, pipe);
 intel_wait_for_vblank(dev_priv, pipe);
 intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, 1);
 intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, 1);
}
