
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int PORT_A ;
 int intel_bios_is_port_edp (struct drm_i915_private*,int) ;

bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port)
{




 if (INTEL_GEN(dev_priv) < 5)
  return 0;

 if (INTEL_GEN(dev_priv) < 9 && port == PORT_A)
  return 1;

 return intel_bios_is_port_edp(dev_priv, port);
}
