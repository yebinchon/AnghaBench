
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct intel_encoder {int port; TYPE_2__ base; } ;
struct intel_dp {scalar_t__ active_pipe; scalar_t__ pps_pipe; } ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {scalar_t__ pipe; } ;
struct drm_i915_private {int pps_mutex; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 scalar_t__ INVALID_PIPE ;
 int WARN_ON (int) ;
 struct intel_dp* enc_to_intel_dp (TYPE_2__*) ;
 int intel_dp_init_panel_power_sequencer (struct intel_dp*) ;
 int intel_dp_init_panel_power_sequencer_registers (struct intel_dp*,int) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int lockdep_assert_held (int *) ;
 int pipe_name (scalar_t__) ;
 int port_name (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int vlv_detach_power_sequencer (struct intel_dp*) ;
 int vlv_steal_power_sequencer (struct drm_i915_private*,scalar_t__) ;

__attribute__((used)) static void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
        const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);

 lockdep_assert_held(&dev_priv->pps_mutex);

 WARN_ON(intel_dp->active_pipe != INVALID_PIPE);

 if (intel_dp->pps_pipe != INVALID_PIPE &&
     intel_dp->pps_pipe != crtc->pipe) {





  vlv_detach_power_sequencer(intel_dp);
 }





 vlv_steal_power_sequencer(dev_priv, crtc->pipe);

 intel_dp->active_pipe = crtc->pipe;

 if (!intel_dp_is_edp(intel_dp))
  return;


 intel_dp->pps_pipe = crtc->pipe;

 DRM_DEBUG_KMS("initializing pipe %c power sequencer for port %c\n",
        pipe_name(intel_dp->pps_pipe), port_name(encoder->port));


 intel_dp_init_panel_power_sequencer(intel_dp);
 intel_dp_init_panel_power_sequencer_registers(intel_dp, 1);
}
