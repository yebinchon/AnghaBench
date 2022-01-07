
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sun8i_phy_clk {TYPE_1__* phy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regs; } ;


 int EINVAL ;
 int SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_MSK ;
 int SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_SHIFT ;
 int SUN8I_HDMI_PHY_PLL_CFG1_REG ;
 struct sun8i_phy_clk* hw_to_phy_clk (struct clk_hw*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int sun8i_phy_clk_set_parent(struct clk_hw *hw, u8 index)
{
 struct sun8i_phy_clk *priv = hw_to_phy_clk(hw);

 if (index > 1)
  return -EINVAL;

 regmap_update_bits(priv->phy->regs, SUN8I_HDMI_PHY_PLL_CFG1_REG,
      SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_MSK,
      index << SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_SHIFT);

 return 0;
}
