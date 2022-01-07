
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {int hpd_pin; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;





 int I915_READ (int ) ;
 int MISSING_CASE (int) ;
 int PORTB_HOTPLUG_LIVE_STATUS_G4X ;
 int PORTC_HOTPLUG_LIVE_STATUS_G4X ;
 int PORTD_HOTPLUG_LIVE_STATUS_G4X ;
 int PORT_HOTPLUG_STAT ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool g4x_digital_port_connected(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 bit;

 switch (encoder->hpd_pin) {
 case 130:
  bit = PORTB_HOTPLUG_LIVE_STATUS_G4X;
  break;
 case 129:
  bit = PORTC_HOTPLUG_LIVE_STATUS_G4X;
  break;
 case 128:
  bit = PORTD_HOTPLUG_LIVE_STATUS_G4X;
  break;
 default:
  MISSING_CASE(encoder->hpd_pin);
  return 0;
 }

 return I915_READ(PORT_HOTPLUG_STAT) & bit;
}
