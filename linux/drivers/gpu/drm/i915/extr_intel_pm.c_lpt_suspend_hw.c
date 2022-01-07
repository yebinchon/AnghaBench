
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_PCH_LPT_LP (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PCH_LP_PARTITION_LEVEL_DISABLE ;
 int SOUTH_DSPCLK_GATE_D ;

__attribute__((used)) static void lpt_suspend_hw(struct drm_i915_private *dev_priv)
{
 if (HAS_PCH_LPT_LP(dev_priv)) {
  u32 val = I915_READ(SOUTH_DSPCLK_GATE_D);

  val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
  I915_WRITE(SOUTH_DSPCLK_GATE_D, val);
 }
}
