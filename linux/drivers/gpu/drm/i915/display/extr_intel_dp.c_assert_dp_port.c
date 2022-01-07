
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {int output_reg; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 int DP_PORT_EN ;
 int I915_READ (int ) ;
 int I915_STATE_WARN (int,char*,int ,int ,int ) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int onoff (int) ;
 int port_name (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void assert_dp_port(struct intel_dp *intel_dp, bool state)
{
 struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 bool cur_state = I915_READ(intel_dp->output_reg) & DP_PORT_EN;

 I915_STATE_WARN(cur_state != state,
   "DP port %c state assertion failure (expected %s, current %s)\n",
   port_name(dig_port->base.port),
   onoff(state), onoff(cur_state));
}
