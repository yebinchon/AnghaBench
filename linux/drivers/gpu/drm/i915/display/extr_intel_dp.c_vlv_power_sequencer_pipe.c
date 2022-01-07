
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {scalar_t__ active_pipe; scalar_t__ pps_pipe; } ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int pps_mutex; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 scalar_t__ INVALID_PIPE ;
 int PIPE_A ;
 scalar_t__ WARN_ON (int) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_dp_init_panel_power_sequencer (struct intel_dp*) ;
 int intel_dp_init_panel_power_sequencer_registers (struct intel_dp*,int) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int lockdep_assert_held (int *) ;
 int pipe_name (int) ;
 int port_name (int ) ;
 int vlv_find_free_pps (struct drm_i915_private*) ;
 int vlv_power_sequencer_kick (struct intel_dp*) ;
 int vlv_steal_power_sequencer (struct drm_i915_private*,int) ;

__attribute__((used)) static enum pipe
vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 enum pipe pipe;

 lockdep_assert_held(&dev_priv->pps_mutex);


 WARN_ON(!intel_dp_is_edp(intel_dp));

 WARN_ON(intel_dp->active_pipe != INVALID_PIPE &&
  intel_dp->active_pipe != intel_dp->pps_pipe);

 if (intel_dp->pps_pipe != INVALID_PIPE)
  return intel_dp->pps_pipe;

 pipe = vlv_find_free_pps(dev_priv);





 if (WARN_ON(pipe == INVALID_PIPE))
  pipe = PIPE_A;

 vlv_steal_power_sequencer(dev_priv, pipe);
 intel_dp->pps_pipe = pipe;

 DRM_DEBUG_KMS("picked pipe %c power sequencer for port %c\n",
        pipe_name(intel_dp->pps_pipe),
        port_name(intel_dig_port->base.port));


 intel_dp_init_panel_power_sequencer(intel_dp);
 intel_dp_init_panel_power_sequencer_registers(intel_dp, 1);





 vlv_power_sequencer_kick(intel_dp);

 return intel_dp->pps_pipe;
}
