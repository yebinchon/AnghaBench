
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_ELKHARTLAKE (struct drm_i915_private*) ;
 int PHY_C ;
 int PHY_D ;
 int PHY_F ;
 int PHY_I ;

bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
{
 if (INTEL_GEN(dev_priv) >= 12)
  return phy >= PHY_D && phy <= PHY_I;

 if (INTEL_GEN(dev_priv) >= 11 && !IS_ELKHARTLAKE(dev_priv))
  return phy >= PHY_C && phy <= PHY_F;

 return 0;
}
