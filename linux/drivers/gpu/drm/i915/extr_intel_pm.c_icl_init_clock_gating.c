
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DFR_DISABLE ;
 int GEN10_DFR_RATIO_EN_AND_CHICKEN ;
 int GEN11_ENABLE_32_PLANE_MODE ;
 int GEN9_CSFE_CHICKEN1_RCS ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int _MASKED_BIT_ENABLE (int ) ;

__attribute__((used)) static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
{

 I915_WRITE(GEN10_DFR_RATIO_EN_AND_CHICKEN,
     I915_READ(GEN10_DFR_RATIO_EN_AND_CHICKEN) & ~DFR_DISABLE);


 I915_WRITE(GEN9_CSFE_CHICKEN1_RCS,
     _MASKED_BIT_ENABLE(GEN11_ENABLE_32_PLANE_MODE));
}
