
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {scalar_t__ pps_pipe; } ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int pps_mutex; } ;
typedef enum port { ____Placeholder_port } port ;


 int DRM_DEBUG_KMS (char*,int ,...) ;
 scalar_t__ INVALID_PIPE ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_dp_init_panel_power_sequencer (struct intel_dp*) ;
 int intel_dp_init_panel_power_sequencer_registers (struct intel_dp*,int) ;
 int lockdep_assert_held (int *) ;
 int pipe_name (scalar_t__) ;
 int port_name (int) ;
 void* vlv_initial_pps_pipe (struct drm_i915_private*,int,int ) ;
 int vlv_pipe_any ;
 int vlv_pipe_has_pp_on ;
 int vlv_pipe_has_vdd_on ;

__attribute__((used)) static void
vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 enum port port = intel_dig_port->base.port;

 lockdep_assert_held(&dev_priv->pps_mutex);



 intel_dp->pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
        vlv_pipe_has_pp_on);

 if (intel_dp->pps_pipe == INVALID_PIPE)
  intel_dp->pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
         vlv_pipe_has_vdd_on);

 if (intel_dp->pps_pipe == INVALID_PIPE)
  intel_dp->pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
         vlv_pipe_any);


 if (intel_dp->pps_pipe == INVALID_PIPE) {
  DRM_DEBUG_KMS("no initial power sequencer for port %c\n",
         port_name(port));
  return;
 }

 DRM_DEBUG_KMS("initial power sequencer for port %c: pipe %c\n",
        port_name(port), pipe_name(intel_dp->pps_pipe));

 intel_dp_init_panel_power_sequencer(intel_dp);
 intel_dp_init_panel_power_sequencer_registers(intel_dp, 0);
}
