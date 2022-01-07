
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int vco; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;


 int DPLL_CTRL1 ;
 int DPLL_CTRL1_HDMI_MODE (int ) ;
 int DPLL_CTRL1_LINK_RATE (int ,int ) ;
 int DPLL_CTRL1_LINK_RATE_1080 ;
 int DPLL_CTRL1_LINK_RATE_810 ;
 int DPLL_CTRL1_LINK_RATE_MASK (int ) ;
 int DPLL_CTRL1_OVERRIDE (int ) ;
 int DPLL_CTRL1_SSC (int ) ;
 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int LCPLL1_CTL ;
 int LCPLL_PLL_ENABLE ;
 int LCPLL_PLL_LOCK ;
 int POSTING_READ (int ) ;
 int SKL_DPLL0 ;
 int WARN_ON (int) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;
 int skl_set_preferred_cdclk_vco (struct drm_i915_private*,int) ;

__attribute__((used)) static void skl_dpll0_enable(struct drm_i915_private *dev_priv, int vco)
{
 u32 val;

 WARN_ON(vco != 8100000 && vco != 8640000);
 val = I915_READ(DPLL_CTRL1);

 val &= ~(DPLL_CTRL1_HDMI_MODE(SKL_DPLL0) | DPLL_CTRL1_SSC(SKL_DPLL0) |
   DPLL_CTRL1_LINK_RATE_MASK(SKL_DPLL0));
 val |= DPLL_CTRL1_OVERRIDE(SKL_DPLL0);
 if (vco == 8640000)
  val |= DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_1080,
         SKL_DPLL0);
 else
  val |= DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_810,
         SKL_DPLL0);

 I915_WRITE(DPLL_CTRL1, val);
 POSTING_READ(DPLL_CTRL1);

 I915_WRITE(LCPLL1_CTL, I915_READ(LCPLL1_CTL) | LCPLL_PLL_ENABLE);

 if (intel_de_wait_for_set(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 5))
  DRM_ERROR("DPLL0 not locked\n");

 dev_priv->cdclk.hw.vco = vco;


 skl_set_preferred_cdclk_vco(dev_priv, vco);
}
