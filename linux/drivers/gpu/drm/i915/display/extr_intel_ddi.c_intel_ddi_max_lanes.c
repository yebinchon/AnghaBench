
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {int saved_port_bits; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DDI_A_4_LANES ;
 int DDI_BUF_CTL (int) ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int PORT_A ;
 int PORT_E ;
 scalar_t__ intel_ddi_a_force_4_lanes (struct intel_digital_port*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int
intel_ddi_max_lanes(struct intel_digital_port *intel_dport)
{
 struct drm_i915_private *dev_priv = to_i915(intel_dport->base.base.dev);
 enum port port = intel_dport->base.port;
 int max_lanes = 4;

 if (INTEL_GEN(dev_priv) >= 11)
  return max_lanes;

 if (port == PORT_A || port == PORT_E) {
  if (I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
   max_lanes = port == PORT_A ? 4 : 0;
  else

   max_lanes = 2;
 }






 if (intel_ddi_a_force_4_lanes(intel_dport)) {
  DRM_DEBUG_KMS("Forcing DDI_A_4_LANES for port A\n");
  intel_dport->saved_port_bits |= DDI_A_4_LANES;
  max_lanes = 4;
 }

 return max_lanes;
}
