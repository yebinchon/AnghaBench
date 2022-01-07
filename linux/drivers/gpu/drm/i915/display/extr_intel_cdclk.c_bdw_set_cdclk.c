
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_cdclk_state {int cdclk; int voltage_level; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ ;
 int CDCLK_FREQ ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int DRM_ERROR (char*) ;
 int HSW_PCODE_DE_WRITE_FREQ_REQ ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int LCPLL_CD2X_CLOCK_DISABLE ;
 int LCPLL_CD_CLOCK_DISABLE ;
 int LCPLL_CD_SOURCE_FCLK ;
 int LCPLL_CD_SOURCE_FCLK_DONE ;
 int LCPLL_CLK_FREQ_337_5_BDW ;
 int LCPLL_CLK_FREQ_450 ;
 int LCPLL_CLK_FREQ_54O_BDW ;
 int LCPLL_CLK_FREQ_675_BDW ;
 int LCPLL_CLK_FREQ_MASK ;
 int LCPLL_CTL ;
 int LCPLL_PLL_DISABLE ;
 int LCPLL_PLL_LOCK ;
 int LCPLL_POWER_DOWN_ALLOW ;
 int LCPLL_ROOT_CD_CLOCK_DISABLE ;
 int MISSING_CASE (int) ;
 scalar_t__ WARN (int,char*) ;
 int intel_update_cdclk (struct drm_i915_private*) ;
 int sandybridge_pcode_write (struct drm_i915_private*,int ,int) ;
 scalar_t__ wait_for_us (int,int) ;

__attribute__((used)) static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
     const struct intel_cdclk_state *cdclk_state,
     enum pipe pipe)
{
 int cdclk = cdclk_state->cdclk;
 u32 val;
 int ret;

 if (WARN((I915_READ(LCPLL_CTL) &
    (LCPLL_PLL_DISABLE | LCPLL_PLL_LOCK |
     LCPLL_CD_CLOCK_DISABLE | LCPLL_ROOT_CD_CLOCK_DISABLE |
     LCPLL_CD2X_CLOCK_DISABLE | LCPLL_POWER_DOWN_ALLOW |
     LCPLL_CD_SOURCE_FCLK)) != LCPLL_PLL_LOCK,
   "trying to change cdclk frequency with cdclk not enabled\n"))
  return;

 ret = sandybridge_pcode_write(dev_priv,
          BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
 if (ret) {
  DRM_ERROR("failed to inform pcode about cdclk change\n");
  return;
 }

 val = I915_READ(LCPLL_CTL);
 val |= LCPLL_CD_SOURCE_FCLK;
 I915_WRITE(LCPLL_CTL, val);





 if (wait_for_us(I915_READ(LCPLL_CTL) &
   LCPLL_CD_SOURCE_FCLK_DONE, 100))
  DRM_ERROR("Switching to FCLK failed\n");

 val = I915_READ(LCPLL_CTL);
 val &= ~LCPLL_CLK_FREQ_MASK;

 switch (cdclk) {
 default:
  MISSING_CASE(cdclk);

 case 337500:
  val |= LCPLL_CLK_FREQ_337_5_BDW;
  break;
 case 450000:
  val |= LCPLL_CLK_FREQ_450;
  break;
 case 540000:
  val |= LCPLL_CLK_FREQ_54O_BDW;
  break;
 case 675000:
  val |= LCPLL_CLK_FREQ_675_BDW;
  break;
 }

 I915_WRITE(LCPLL_CTL, val);

 val = I915_READ(LCPLL_CTL);
 val &= ~LCPLL_CD_SOURCE_FCLK;
 I915_WRITE(LCPLL_CTL, val);

 if (wait_for_us((I915_READ(LCPLL_CTL) &
   LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
  DRM_ERROR("Switching back to LCPLL failed\n");

 sandybridge_pcode_write(dev_priv, HSW_PCODE_DE_WRITE_FREQ_REQ,
    cdclk_state->voltage_level);

 I915_WRITE(CDCLK_FREQ, DIV_ROUND_CLOSEST(cdclk, 1000) - 1);

 intel_update_cdclk(dev_priv);
}
