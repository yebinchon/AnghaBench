
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DP_A ;
 int DP_DETECTED ;
 int FUSE_STRAP ;
 int I915_READ (int ) ;
 int ILK_eDP_A_DISABLE ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int IS_MOBILE (struct drm_i915_private*) ;

__attribute__((used)) static bool ilk_has_edp_a(struct drm_i915_private *dev_priv)
{
 if (!IS_MOBILE(dev_priv))
  return 0;

 if ((I915_READ(DP_A) & DP_DETECTED) == 0)
  return 0;

 if (IS_GEN(dev_priv, 5) && (I915_READ(FUSE_STRAP) & ILK_eDP_A_DISABLE))
  return 0;

 return 1;
}
