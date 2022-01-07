
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int D_COMP_BDW ;
 int GEN6_PCODE_WRITE_D_COMP ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int POSTING_READ (int ) ;
 scalar_t__ sandybridge_pcode_write (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static void hsw_write_dcomp(struct drm_i915_private *dev_priv, u32 val)
{
 if (IS_HASWELL(dev_priv)) {
  if (sandybridge_pcode_write(dev_priv,
         GEN6_PCODE_WRITE_D_COMP, val))
   DRM_DEBUG_KMS("Failed to write to D_COMP\n");
 } else {
  I915_WRITE(D_COMP_BDW, val);
  POSTING_READ(D_COMP_BDW);
 }
}
