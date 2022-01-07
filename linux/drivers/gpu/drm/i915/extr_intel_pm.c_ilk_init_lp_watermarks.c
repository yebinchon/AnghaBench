
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int WM1_LP_ILK ;
 int WM1_LP_SR_EN ;
 int WM2_LP_ILK ;
 int WM3_LP_ILK ;

__attribute__((used)) static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
{
 I915_WRITE(WM3_LP_ILK, I915_READ(WM3_LP_ILK) & ~WM1_LP_SR_EN);
 I915_WRITE(WM2_LP_ILK, I915_READ(WM2_LP_ILK) & ~WM1_LP_SR_EN);
 I915_WRITE(WM1_LP_ILK, I915_READ(WM1_LP_ILK) & ~WM1_LP_SR_EN);





}
