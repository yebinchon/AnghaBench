
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
 int SDEISR ;
 int SDE_PORTA_HOTPLUG_SPT ;
 int SDE_PORTE_HOTPLUG_SPT ;
 int cpt_digital_port_connected (struct intel_encoder*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool spt_digital_port_connected(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 bit;

 switch (encoder->hpd_pin) {
 case 129:
  bit = SDE_PORTA_HOTPLUG_SPT;
  break;
 case 128:
  bit = SDE_PORTE_HOTPLUG_SPT;
  break;
 default:
  return cpt_digital_port_connected(encoder);
 }

 return I915_READ(SDEISR) & bit;
}
