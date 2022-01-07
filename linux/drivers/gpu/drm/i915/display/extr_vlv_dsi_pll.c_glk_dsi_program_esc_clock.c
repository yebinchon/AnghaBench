
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctrl; } ;
struct intel_crtc_state {TYPE_1__ dsi_pll; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int BXT_DSI_PLL_RATIO_MASK ;
 int BXT_REF_CLOCK_KHZ ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int DIV_ROUND_UP (int,int) ;
 int GLK_TX_ESC_CLK_DIV1_MASK ;
 int GLK_TX_ESC_CLK_DIV2_MASK ;
 int I915_WRITE (int ,int) ;
 int MIPIO_TXESC_CLK_DIV1 ;
 int MIPIO_TXESC_CLK_DIV2 ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void glk_dsi_program_esc_clock(struct drm_device *dev,
       const struct intel_crtc_state *config)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 u32 dsi_rate = 0;
 u32 pll_ratio = 0;
 u32 ddr_clk = 0;
 u32 div1_value = 0;
 u32 div2_value = 0;
 u32 txesc1_div = 0;
 u32 txesc2_div = 0;

 pll_ratio = config->dsi_pll.ctrl & BXT_DSI_PLL_RATIO_MASK;

 dsi_rate = (BXT_REF_CLOCK_KHZ * pll_ratio) / 2;

 ddr_clk = dsi_rate / 2;


 div1_value = DIV_ROUND_CLOSEST(ddr_clk, 20000);


 if (div1_value <= 10)
  txesc1_div = div1_value;
 else if ((div1_value > 10) && (div1_value <= 20))
  txesc1_div = DIV_ROUND_UP(div1_value, 2);
 else if ((div1_value > 20) && (div1_value <= 30))
  txesc1_div = DIV_ROUND_UP(div1_value, 4);
 else if ((div1_value > 30) && (div1_value <= 40))
  txesc1_div = DIV_ROUND_UP(div1_value, 6);
 else if ((div1_value > 40) && (div1_value <= 50))
  txesc1_div = DIV_ROUND_UP(div1_value, 8);
 else
  txesc1_div = 10;


 div2_value = DIV_ROUND_UP(div1_value, txesc1_div);

 if (div2_value < 10)
  txesc2_div = div2_value;
 else
  txesc2_div = 10;

 I915_WRITE(MIPIO_TXESC_CLK_DIV1, (1 << (txesc1_div - 1)) & GLK_TX_ESC_CLK_DIV1_MASK);
 I915_WRITE(MIPIO_TXESC_CLK_DIV2, (1 << (txesc2_div - 1)) & GLK_TX_ESC_CLK_DIV2_MASK);
}
