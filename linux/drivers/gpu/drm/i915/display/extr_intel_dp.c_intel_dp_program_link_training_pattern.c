
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct intel_dp {int output_reg; int DP; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int _intel_dp_set_link_train (struct intel_dp*,int *,int ) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* to_i915 (int ) ;

void
intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
           u8 dp_train_pat)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 struct drm_i915_private *dev_priv =
  to_i915(intel_dig_port->base.base.dev);

 _intel_dp_set_link_train(intel_dp, &intel_dp->DP, dp_train_pat);

 I915_WRITE(intel_dp->output_reg, intel_dp->DP);
 POSTING_READ(intel_dp->output_reg);
}
