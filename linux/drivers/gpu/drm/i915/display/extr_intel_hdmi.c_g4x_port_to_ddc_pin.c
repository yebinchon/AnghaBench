
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int GMBUS_PIN_DPB ;
 int GMBUS_PIN_DPC ;
 int GMBUS_PIN_DPD ;
 int MISSING_CASE (int) ;




__attribute__((used)) static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
         enum port port)
{
 u8 ddc_pin;

 switch (port) {
 case 130:
  ddc_pin = GMBUS_PIN_DPB;
  break;
 case 129:
  ddc_pin = GMBUS_PIN_DPC;
  break;
 case 128:
  ddc_pin = GMBUS_PIN_DPD;
  break;
 default:
  MISSING_CASE(port);
  ddc_pin = GMBUS_PIN_DPB;
  break;
 }
 return ddc_pin;
}
