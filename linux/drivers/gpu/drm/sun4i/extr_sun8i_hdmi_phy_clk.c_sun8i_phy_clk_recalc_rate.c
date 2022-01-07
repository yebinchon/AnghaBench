
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sun8i_phy_clk {TYPE_1__* phy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regs; } ;


 int SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_MSK ;
 int SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_SHIFT ;
 int SUN8I_HDMI_PHY_PLL_CFG2_REG ;
 struct sun8i_phy_clk* hw_to_phy_clk (struct clk_hw*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static unsigned long sun8i_phy_clk_recalc_rate(struct clk_hw *hw,
            unsigned long parent_rate)
{
 struct sun8i_phy_clk *priv = hw_to_phy_clk(hw);
 u32 reg;

 regmap_read(priv->phy->regs, SUN8I_HDMI_PHY_PLL_CFG2_REG, &reg);
 reg = ((reg >> SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_SHIFT) &
  SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_MSK) + 1;

 return parent_rate / reg;
}
