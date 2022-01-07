
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {scalar_t__ hpd_pin; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int GEN8_DE_PORT_ISR ;
 int GEN8_PORT_DP_A_HOTPLUG ;
 scalar_t__ HPD_PORT_A ;
 int I915_READ (int ) ;
 int cpt_digital_port_connected (struct intel_encoder*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool bdw_digital_port_connected(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);

 if (encoder->hpd_pin == HPD_PORT_A)
  return I915_READ(GEN8_DE_PORT_ISR) & GEN8_PORT_DP_A_HOTPLUG;
 else
  return cpt_digital_port_connected(encoder);
}
