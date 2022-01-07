
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ vco; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;


 int BXT_DE_PLL_ENABLE ;
 int BXT_DE_PLL_LOCK ;
 int BXT_DE_PLL_PLL_ENABLE ;
 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void cnl_cdclk_pll_disable(struct drm_i915_private *dev_priv)
{
 u32 val;

 val = I915_READ(BXT_DE_PLL_ENABLE);
 val &= ~BXT_DE_PLL_PLL_ENABLE;
 I915_WRITE(BXT_DE_PLL_ENABLE, val);


 if (wait_for((I915_READ(BXT_DE_PLL_ENABLE) & BXT_DE_PLL_LOCK) == 0, 1))
  DRM_ERROR("timeout waiting for CDCLK PLL unlock\n");

 dev_priv->cdclk.hw.vco = 0;
}
