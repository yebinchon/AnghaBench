
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int PORT_E ;

bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
{

 return INTEL_GEN(dev_priv) >= 9 && port < PORT_E;
}
