
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int vco; int ref; } ;
struct TYPE_3__ {TYPE_2__ hw; } ;
struct drm_i915_private {TYPE_1__ cdclk; } ;


 int BXT_DE_PLL_ENABLE ;
 int BXT_DE_PLL_LOCK ;
 int BXT_DE_PLL_PLL_ENABLE ;
 int CNL_CDCLK_PLL_RATIO (int) ;
 int DIV_ROUND_CLOSEST (int,int ) ;
 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void cnl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vco)
{
 int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
 u32 val;

 val = CNL_CDCLK_PLL_RATIO(ratio);
 I915_WRITE(BXT_DE_PLL_ENABLE, val);

 val |= BXT_DE_PLL_PLL_ENABLE;
 I915_WRITE(BXT_DE_PLL_ENABLE, val);


 if (wait_for((I915_READ(BXT_DE_PLL_ENABLE) & BXT_DE_PLL_LOCK) != 0, 1))
  DRM_ERROR("timeout waiting for CDCLK PLL lock\n");

 dev_priv->cdclk.hw.vco = vco;
}
