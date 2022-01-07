
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {scalar_t__ tc_mode; int aux_ch; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;
 int MISSING_CASE (int) ;
 int POWER_DOMAIN_AUX_A ;
 int POWER_DOMAIN_AUX_B ;
 int POWER_DOMAIN_AUX_C ;
 int POWER_DOMAIN_AUX_D ;
 int POWER_DOMAIN_AUX_E ;
 int POWER_DOMAIN_AUX_F ;
 int POWER_DOMAIN_AUX_TBT1 ;
 int POWER_DOMAIN_AUX_TBT2 ;
 int POWER_DOMAIN_AUX_TBT3 ;
 int POWER_DOMAIN_AUX_TBT4 ;
 scalar_t__ TC_PORT_TBT_ALT ;
 scalar_t__ intel_phy_is_tc (struct drm_i915_private*,int) ;
 int intel_port_to_phy (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

enum intel_display_power_domain
intel_aux_power_domain(struct intel_digital_port *dig_port)
{
 struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);

 if (intel_phy_is_tc(dev_priv, phy) &&
     dig_port->tc_mode == TC_PORT_TBT_ALT) {
  switch (dig_port->aux_ch) {
  case 131:
   return POWER_DOMAIN_AUX_TBT1;
  case 130:
   return POWER_DOMAIN_AUX_TBT2;
  case 129:
   return POWER_DOMAIN_AUX_TBT3;
  case 128:
   return POWER_DOMAIN_AUX_TBT4;
  default:
   MISSING_CASE(dig_port->aux_ch);
   return POWER_DOMAIN_AUX_TBT1;
  }
 }

 switch (dig_port->aux_ch) {
 case 133:
  return POWER_DOMAIN_AUX_A;
 case 132:
  return POWER_DOMAIN_AUX_B;
 case 131:
  return POWER_DOMAIN_AUX_C;
 case 130:
  return POWER_DOMAIN_AUX_D;
 case 129:
  return POWER_DOMAIN_AUX_E;
 case 128:
  return POWER_DOMAIN_AUX_F;
 default:
  MISSING_CASE(dig_port->aux_ch);
  return POWER_DOMAIN_AUX_A;
 }
}
