
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int type; TYPE_1__ base; } ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {struct intel_encoder base; } ;
struct drm_i915_private {int dummy; } ;


 int DDI_BUF_TRANS_SELECT (int) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int intel_ddi_dp_level (struct intel_dp*) ;
 int skl_ddi_set_iboost (struct intel_encoder*,int,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

u32 ddi_signal_levels(struct intel_dp *intel_dp)
{
 struct intel_digital_port *dport = dp_to_dig_port(intel_dp);
 struct drm_i915_private *dev_priv = to_i915(dport->base.base.dev);
 struct intel_encoder *encoder = &dport->base;
 int level = intel_ddi_dp_level(intel_dp);

 if (IS_GEN9_BC(dev_priv))
  skl_ddi_set_iboost(encoder, level, encoder->type);

 return DDI_BUF_TRANS_SELECT(level);
}
