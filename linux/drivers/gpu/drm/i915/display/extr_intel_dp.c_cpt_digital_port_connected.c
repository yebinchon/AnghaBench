
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
 int SDEISR ;
 int SDE_PORTB_HOTPLUG_CPT ;
 int SDE_PORTC_HOTPLUG_CPT ;
 int SDE_PORTD_HOTPLUG_CPT ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool cpt_digital_port_connected(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 bit;

 switch (encoder->hpd_pin) {
 case 130:
  bit = SDE_PORTB_HOTPLUG_CPT;
  break;
 case 129:
  bit = SDE_PORTC_HOTPLUG_CPT;
  break;
 case 128:
  bit = SDE_PORTD_HOTPLUG_CPT;
  break;
 default:
  MISSING_CASE(encoder->hpd_pin);
  return 0;
 }

 return I915_READ(SDEISR) & bit;
}
