
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int reg; } ;
typedef TYPE_1__ i915_reg_t ;
typedef enum phy { ____Placeholder_phy } phy ;


 int DRM_DEBUG_DRIVER (char*,int ,int ,int,int,int) ;
 int I915_READ (TYPE_1__) ;
 int phy_name (int) ;

__attribute__((used)) static bool check_phy_reg(struct drm_i915_private *dev_priv,
     enum phy phy, i915_reg_t reg, u32 mask,
     u32 expected_val)
{
 u32 val = I915_READ(reg);

 if ((val & mask) != expected_val) {
  DRM_DEBUG_DRIVER("Combo PHY %c reg %08x state mismatch: "
     "current %08x mask %08x expected %08x\n",
     phy_name(phy),
     reg.reg, val, mask, expected_val);
  return 0;
 }

 return 1;
}
