
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sun8i_phy_clk {TYPE_1__* phy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regs; } ;


 int SUN8I_HDMI_PHY_PLL_CFG2_PREDIV (int) ;
 int SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_MSK ;
 int SUN8I_HDMI_PHY_PLL_CFG2_REG ;
 struct sun8i_phy_clk* hw_to_phy_clk (struct clk_hw*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int sun8i_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long parent_rate)
{
 struct sun8i_phy_clk *priv = hw_to_phy_clk(hw);
 unsigned long best_rate = 0;
 u8 best_m = 0, m;

 for (m = 1; m <= 16; m++) {
  unsigned long tmp_rate = parent_rate / m;

  if (tmp_rate > rate)
   continue;

  if (!best_rate ||
      (rate - tmp_rate) < (rate - best_rate)) {
   best_rate = tmp_rate;
   best_m = m;
  }
 }

 regmap_update_bits(priv->phy->regs, SUN8I_HDMI_PHY_PLL_CFG2_REG,
      SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_MSK,
      SUN8I_HDMI_PHY_PLL_CFG2_PREDIV(best_m));

 return 0;
}
