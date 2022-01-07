
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DC_STATE_EN_UPTO_DC6 ;
 int DRM_DEBUG_KMS (char*) ;
 int GEN8_CHICKEN_DCPR_1 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 int SKL_SELECT_ALTERNATE_DC_EXIT ;
 int assert_can_enable_dc6 (struct drm_i915_private*) ;
 int gen9_set_dc_state (struct drm_i915_private*,int ) ;

__attribute__((used)) static void skl_enable_dc6(struct drm_i915_private *dev_priv)
{
 assert_can_enable_dc6(dev_priv);

 DRM_DEBUG_KMS("Enabling DC6\n");


 if (IS_GEN9_BC(dev_priv))
  I915_WRITE(GEN8_CHICKEN_DCPR_1, I915_READ(GEN8_CHICKEN_DCPR_1) |
      SKL_SELECT_ALTERNATE_DC_EXIT);

 gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
}
