
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int ebb0; int pll0; int pll1; int pll2; int pll3; int pll6; int pll8; int pll9; int pll10; int ebb4; int pcsdw12; } ;
struct TYPE_6__ {TYPE_2__ hw_state; } ;
struct intel_shared_dpll {TYPE_3__ state; TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;
typedef enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;
struct TYPE_4__ {int id; } ;


 int BXT_PORT_PCS_DW12_GRP (int,int) ;
 int BXT_PORT_PCS_DW12_LN01 (int,int) ;
 int BXT_PORT_PLL (int,int,int) ;
 int BXT_PORT_PLL_EBB_0 (int,int) ;
 int BXT_PORT_PLL_EBB_4 (int,int) ;
 int BXT_PORT_PLL_ENABLE (int) ;
 int BXT_PORT_TX_DW5_GRP (int,int) ;
 int BXT_PORT_TX_DW5_LN0 (int,int) ;
 int DCC_DELAY_RANGE_2 ;
 int DRM_ERROR (char*,int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int LANESTAGGER_STRAP_OVRD ;
 int LANE_STAGGER_MASK ;
 int PORT_PLL_10BIT_CLK_ENABLE ;
 int PORT_PLL_DCO_AMP_MASK ;
 int PORT_PLL_DCO_AMP_OVR_EN_H ;
 int PORT_PLL_ENABLE ;
 int PORT_PLL_GAIN_CTL_MASK ;
 int PORT_PLL_INT_COEFF_MASK ;
 int PORT_PLL_LOCK ;
 int PORT_PLL_LOCK_THRESHOLD_MASK ;
 int PORT_PLL_M2_FRAC_ENABLE ;
 int PORT_PLL_M2_FRAC_MASK ;
 int PORT_PLL_M2_MASK ;
 int PORT_PLL_N_MASK ;
 int PORT_PLL_P1_MASK ;
 int PORT_PLL_P2_MASK ;
 int PORT_PLL_POWER_ENABLE ;
 int PORT_PLL_POWER_STATE ;
 int PORT_PLL_PROP_COEFF_MASK ;
 int PORT_PLL_RECALIBRATE ;
 int PORT_PLL_REF_SEL ;
 int PORT_PLL_TARGET_CNT_MASK ;
 int POSTING_READ (int ) ;
 int bxt_port_to_phy_channel (struct drm_i915_private*,int,int*,int*) ;
 scalar_t__ wait_for_us (int,int) ;

__attribute__((used)) static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
    struct intel_shared_dpll *pll)
{
 u32 temp;
 enum port port = (enum port)pll->info->id;
 enum dpio_phy phy;
 enum dpio_channel ch;

 bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);


 temp = I915_READ(BXT_PORT_PLL_ENABLE(port));
 temp |= PORT_PLL_REF_SEL;
 I915_WRITE(BXT_PORT_PLL_ENABLE(port), temp);

 if (IS_GEMINILAKE(dev_priv)) {
  temp = I915_READ(BXT_PORT_PLL_ENABLE(port));
  temp |= PORT_PLL_POWER_ENABLE;
  I915_WRITE(BXT_PORT_PLL_ENABLE(port), temp);

  if (wait_for_us((I915_READ(BXT_PORT_PLL_ENABLE(port)) &
     PORT_PLL_POWER_STATE), 200))
   DRM_ERROR("Power state not set for PLL:%d\n", port);
 }


 temp = I915_READ(BXT_PORT_PLL_EBB_4(phy, ch));
 temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
 I915_WRITE(BXT_PORT_PLL_EBB_4(phy, ch), temp);


 temp = I915_READ(BXT_PORT_PLL_EBB_0(phy, ch));
 temp &= ~(PORT_PLL_P1_MASK | PORT_PLL_P2_MASK);
 temp |= pll->state.hw_state.ebb0;
 I915_WRITE(BXT_PORT_PLL_EBB_0(phy, ch), temp);


 temp = I915_READ(BXT_PORT_PLL(phy, ch, 0));
 temp &= ~PORT_PLL_M2_MASK;
 temp |= pll->state.hw_state.pll0;
 I915_WRITE(BXT_PORT_PLL(phy, ch, 0), temp);


 temp = I915_READ(BXT_PORT_PLL(phy, ch, 1));
 temp &= ~PORT_PLL_N_MASK;
 temp |= pll->state.hw_state.pll1;
 I915_WRITE(BXT_PORT_PLL(phy, ch, 1), temp);


 temp = I915_READ(BXT_PORT_PLL(phy, ch, 2));
 temp &= ~PORT_PLL_M2_FRAC_MASK;
 temp |= pll->state.hw_state.pll2;
 I915_WRITE(BXT_PORT_PLL(phy, ch, 2), temp);


 temp = I915_READ(BXT_PORT_PLL(phy, ch, 3));
 temp &= ~PORT_PLL_M2_FRAC_ENABLE;
 temp |= pll->state.hw_state.pll3;
 I915_WRITE(BXT_PORT_PLL(phy, ch, 3), temp);


 temp = I915_READ(BXT_PORT_PLL(phy, ch, 6));
 temp &= ~PORT_PLL_PROP_COEFF_MASK;
 temp &= ~PORT_PLL_INT_COEFF_MASK;
 temp &= ~PORT_PLL_GAIN_CTL_MASK;
 temp |= pll->state.hw_state.pll6;
 I915_WRITE(BXT_PORT_PLL(phy, ch, 6), temp);


 temp = I915_READ(BXT_PORT_PLL(phy, ch, 8));
 temp &= ~PORT_PLL_TARGET_CNT_MASK;
 temp |= pll->state.hw_state.pll8;
 I915_WRITE(BXT_PORT_PLL(phy, ch, 8), temp);

 temp = I915_READ(BXT_PORT_PLL(phy, ch, 9));
 temp &= ~PORT_PLL_LOCK_THRESHOLD_MASK;
 temp |= pll->state.hw_state.pll9;
 I915_WRITE(BXT_PORT_PLL(phy, ch, 9), temp);

 temp = I915_READ(BXT_PORT_PLL(phy, ch, 10));
 temp &= ~PORT_PLL_DCO_AMP_OVR_EN_H;
 temp &= ~PORT_PLL_DCO_AMP_MASK;
 temp |= pll->state.hw_state.pll10;
 I915_WRITE(BXT_PORT_PLL(phy, ch, 10), temp);


 temp = I915_READ(BXT_PORT_PLL_EBB_4(phy, ch));
 temp |= PORT_PLL_RECALIBRATE;
 I915_WRITE(BXT_PORT_PLL_EBB_4(phy, ch), temp);
 temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
 temp |= pll->state.hw_state.ebb4;
 I915_WRITE(BXT_PORT_PLL_EBB_4(phy, ch), temp);


 temp = I915_READ(BXT_PORT_PLL_ENABLE(port));
 temp |= PORT_PLL_ENABLE;
 I915_WRITE(BXT_PORT_PLL_ENABLE(port), temp);
 POSTING_READ(BXT_PORT_PLL_ENABLE(port));

 if (wait_for_us((I915_READ(BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
   200))
  DRM_ERROR("PLL %d not locked\n", port);

 if (IS_GEMINILAKE(dev_priv)) {
  temp = I915_READ(BXT_PORT_TX_DW5_LN0(phy, ch));
  temp |= DCC_DELAY_RANGE_2;
  I915_WRITE(BXT_PORT_TX_DW5_GRP(phy, ch), temp);
 }





 temp = I915_READ(BXT_PORT_PCS_DW12_LN01(phy, ch));
 temp &= ~LANE_STAGGER_MASK;
 temp &= ~LANESTAGGER_STRAP_OVRD;
 temp |= pll->state.hw_state.pcsdw12;
 I915_WRITE(BXT_PORT_PCS_DW12_GRP(phy, ch), temp);
}
