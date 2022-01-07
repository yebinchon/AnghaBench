
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_hdmi_phy {int regs; } ;
struct dw_hdmi {int dummy; } ;


 int SUN8I_HDMI_PHY_ANA_CFG1_ENBI ;
 int SUN8I_HDMI_PHY_ANA_CFG1_ENVBS ;
 int SUN8I_HDMI_PHY_ANA_CFG1_LDOEN ;
 int SUN8I_HDMI_PHY_ANA_CFG1_REG ;
 int SUN8I_HDMI_PHY_PLL_CFG1_REG ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void sun8i_hdmi_phy_disable_h3(struct dw_hdmi *hdmi,
          struct sun8i_hdmi_phy *phy)
{
 regmap_write(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
       SUN8I_HDMI_PHY_ANA_CFG1_LDOEN |
       SUN8I_HDMI_PHY_ANA_CFG1_ENVBS |
       SUN8I_HDMI_PHY_ANA_CFG1_ENBI);
 regmap_write(phy->regs, SUN8I_HDMI_PHY_PLL_CFG1_REG, 0);
}
