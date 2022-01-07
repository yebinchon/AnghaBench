
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_hdmi_phy {int regs; } ;
struct dw_hdmi {int dummy; } ;


 int SUN8I_HDMI_PHY_REXT_CTRL_REG ;
 int SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN ;
 int dw_hdmi_phy_gen2_pddq (struct dw_hdmi*,int) ;
 int dw_hdmi_phy_gen2_txpwron (struct dw_hdmi*,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sun8i_hdmi_phy_disable_a83t(struct dw_hdmi *hdmi,
     struct sun8i_hdmi_phy *phy)
{
 dw_hdmi_phy_gen2_txpwron(hdmi, 0);
 dw_hdmi_phy_gen2_pddq(hdmi, 1);

 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_REXT_CTRL_REG,
      SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN, 0);
}
