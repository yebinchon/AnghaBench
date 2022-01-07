
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_hdmi_phy {int regs; } ;


 int SUN8I_HDMI_PHY_REXT_CTRL_REG ;
 int SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void sun50i_hdmi_phy_init_h6(struct sun8i_hdmi_phy *phy)
{
 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_REXT_CTRL_REG,
      SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN,
      SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN);

 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_REXT_CTRL_REG,
      0xffff0000, 0x80c00000);
}
