
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int I915_READ (int ) ;
 int SDEISR ;
 int SDE_DDI_HOTPLUG_ICP (int) ;

__attribute__((used)) static bool icl_combo_port_connected(struct drm_i915_private *dev_priv,
         struct intel_digital_port *intel_dig_port)
{
 enum port port = intel_dig_port->base.port;

 return I915_READ(SDEISR) & SDE_DDI_HOTPLUG_ICP(port);
}
