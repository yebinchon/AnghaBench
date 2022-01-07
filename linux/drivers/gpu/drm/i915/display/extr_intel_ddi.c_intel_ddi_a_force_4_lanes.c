
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {scalar_t__ port; TYPE_1__ base; } ;
struct intel_digital_port {int saved_port_bits; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 int DDI_A_4_LANES ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 scalar_t__ PORT_A ;
 int PORT_E ;
 int intel_bios_is_port_present (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dport)
{
 struct drm_i915_private *dev_priv = to_i915(dport->base.base.dev);

 if (dport->base.port != PORT_A)
  return 0;

 if (dport->saved_port_bits & DDI_A_4_LANES)
  return 0;




 if (IS_GEN9_LP(dev_priv))
  return 1;






 if (IS_CANNONLAKE(dev_priv) &&
     !intel_bios_is_port_present(dev_priv, PORT_E))
  return 1;

 return 0;
}
