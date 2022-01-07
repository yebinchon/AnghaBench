
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int port; } ;
struct intel_dp {int output_reg; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {struct intel_encoder base; } ;


 int INVALID_PIPE ;
 TYPE_1__* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 scalar_t__ intel_dp_port_enabled (struct drm_i915_private*,int ,int ,int*) ;

__attribute__((used)) static enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 enum pipe pipe;

 if (intel_dp_port_enabled(dev_priv, intel_dp->output_reg,
      encoder->port, &pipe))
  return pipe;

 return INVALID_PIPE;
}
