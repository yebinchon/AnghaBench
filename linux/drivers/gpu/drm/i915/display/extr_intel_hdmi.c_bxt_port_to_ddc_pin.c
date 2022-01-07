
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int GMBUS_PIN_1_BXT ;
 int GMBUS_PIN_2_BXT ;
 int MISSING_CASE (int) ;



__attribute__((used)) static u8 bxt_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
{
 u8 ddc_pin;

 switch (port) {
 case 129:
  ddc_pin = GMBUS_PIN_1_BXT;
  break;
 case 128:
  ddc_pin = GMBUS_PIN_2_BXT;
  break;
 default:
  MISSING_CASE(port);
  ddc_pin = GMBUS_PIN_1_BXT;
  break;
 }
 return ddc_pin;
}
