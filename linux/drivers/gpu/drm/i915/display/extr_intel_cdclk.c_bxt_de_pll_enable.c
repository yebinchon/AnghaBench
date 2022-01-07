
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


 int BXT_DE_PLL_CTL ;
 int BXT_DE_PLL_ENABLE ;
 int BXT_DE_PLL_LOCK ;
 int BXT_DE_PLL_PLL_ENABLE ;
 int BXT_DE_PLL_RATIO (int) ;
 int BXT_DE_PLL_RATIO_MASK ;
 int DIV_ROUND_CLOSEST (int,int ) ;
 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;

__attribute__((used)) static void bxt_de_pll_enable(struct drm_i915_private *dev_priv, int vco)
{
 int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
 u32 val;

 val = I915_READ(BXT_DE_PLL_CTL);
 val &= ~BXT_DE_PLL_RATIO_MASK;
 val |= BXT_DE_PLL_RATIO(ratio);
 I915_WRITE(BXT_DE_PLL_CTL, val);

 I915_WRITE(BXT_DE_PLL_ENABLE, BXT_DE_PLL_PLL_ENABLE);


 if (intel_de_wait_for_set(dev_priv,
      BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
  DRM_ERROR("timeout waiting for DE PLL lock\n");

 dev_priv->cdclk.hw.vco = vco;
}
