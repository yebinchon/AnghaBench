
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct intel_digital_port {int aux_ch; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum aux_ch { ____Placeholder_aux_ch } aux_ch ;






 int DP_AUX_CH_DATA (int const,int) ;
 int MISSING_CASE (int) ;
 int PCH_DP_AUX_CH_DATA (int,int) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;

__attribute__((used)) static i915_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 enum aux_ch aux_ch = dig_port->aux_ch;

 switch (aux_ch) {
 case 131:
  return DP_AUX_CH_DATA(aux_ch, index);
 case 130:
 case 129:
 case 128:
  return PCH_DP_AUX_CH_DATA(aux_ch, index);
 default:
  MISSING_CASE(aux_ch);
  return DP_AUX_CH_DATA(131, index);
 }
}
