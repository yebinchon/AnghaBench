
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum phy { ____Placeholder_phy } phy ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_ELKHARTLAKE (struct drm_i915_private*) ;
 int PHY_B ;
 int PHY_C ;
 int PHY_NONE ;

bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
{
 if (phy == PHY_NONE)
  return 0;

 if (IS_ELKHARTLAKE(dev_priv))
  return phy <= PHY_C;

 if (INTEL_GEN(dev_priv) >= 11)
  return phy <= PHY_B;

 return 0;
}
