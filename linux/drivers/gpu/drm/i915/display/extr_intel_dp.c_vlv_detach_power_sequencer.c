
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {int pps_pipe; scalar_t__ active_pipe; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ INVALID_PIPE ;
 int PIPE_A ;
 int PIPE_B ;
 int POSTING_READ (int ) ;
 int PP_ON_DELAYS (int) ;
 scalar_t__ WARN_ON (int) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int edp_panel_vdd_off_sync (struct intel_dp*) ;
 int pipe_name (int) ;
 int port_name (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 struct drm_i915_private *dev_priv = to_i915(intel_dig_port->base.base.dev);
 enum pipe pipe = intel_dp->pps_pipe;
 i915_reg_t pp_on_reg = PP_ON_DELAYS(pipe);

 WARN_ON(intel_dp->active_pipe != INVALID_PIPE);

 if (WARN_ON(pipe != PIPE_A && pipe != PIPE_B))
  return;

 edp_panel_vdd_off_sync(intel_dp);
 DRM_DEBUG_KMS("detaching pipe %c power sequencer from port %c\n",
        pipe_name(pipe), port_name(intel_dig_port->base.port));
 I915_WRITE(pp_on_reg, 0);
 POSTING_READ(pp_on_reg);

 intel_dp->pps_pipe = INVALID_PIPE;
}
