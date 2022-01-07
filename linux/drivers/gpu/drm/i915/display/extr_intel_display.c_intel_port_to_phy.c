
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum phy { ____Placeholder_phy } phy ;


 scalar_t__ IS_ELKHARTLAKE (struct drm_i915_private*) ;
 int PHY_A ;
 int PORT_D ;

enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
{
 if (IS_ELKHARTLAKE(i915) && port == PORT_D)
  return PHY_A;

 return (enum phy)port;
}
