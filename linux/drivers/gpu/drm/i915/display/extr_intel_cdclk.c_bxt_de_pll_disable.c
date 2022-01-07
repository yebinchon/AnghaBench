
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vco; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;


 int BXT_DE_PLL_ENABLE ;
 int BXT_DE_PLL_LOCK ;
 int DRM_ERROR (char*) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int) ;

__attribute__((used)) static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
{
 I915_WRITE(BXT_DE_PLL_ENABLE, 0);


 if (intel_de_wait_for_clear(dev_priv,
        BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
  DRM_ERROR("timeout waiting for DE PLL unlock\n");

 dev_priv->cdclk.hw.vco = 0;
}
