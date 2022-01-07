
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum phy { ____Placeholder_phy } phy ;


 int GMBUS_PIN_1_BXT ;
 int GMBUS_PIN_2_BXT ;
 int GMBUS_PIN_9_TC1_ICP ;
 int MISSING_CASE (int) ;



 int intel_port_to_phy (struct drm_i915_private*,int) ;

__attribute__((used)) static u8 mcc_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
{
 enum phy phy = intel_port_to_phy(dev_priv, port);
 u8 ddc_pin;

 switch (phy) {
 case 130:
  ddc_pin = GMBUS_PIN_1_BXT;
  break;
 case 129:
  ddc_pin = GMBUS_PIN_2_BXT;
  break;
 case 128:
  ddc_pin = GMBUS_PIN_9_TC1_ICP;
  break;
 default:
  MISSING_CASE(phy);
  ddc_pin = GMBUS_PIN_1_BXT;
  break;
 }
 return ddc_pin;
}
