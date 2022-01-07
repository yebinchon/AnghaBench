
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_hdmi_phy {int regs; } ;


 int I2C_ADDR ;
 int SUN8I_HDMI_PHY_DBG_CTRL_ADDR (int ) ;
 int SUN8I_HDMI_PHY_DBG_CTRL_ADDR_MASK ;
 int SUN8I_HDMI_PHY_DBG_CTRL_PX_LOCK ;
 int SUN8I_HDMI_PHY_DBG_CTRL_REG ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int sun8i_hdmi_phy_unlock (struct sun8i_hdmi_phy*) ;

__attribute__((used)) static void sun8i_hdmi_phy_init_a83t(struct sun8i_hdmi_phy *phy)
{
 sun8i_hdmi_phy_unlock(phy);

 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_DBG_CTRL_REG,
      SUN8I_HDMI_PHY_DBG_CTRL_PX_LOCK,
      SUN8I_HDMI_PHY_DBG_CTRL_PX_LOCK);





 regmap_update_bits(phy->regs, SUN8I_HDMI_PHY_DBG_CTRL_REG,
      SUN8I_HDMI_PHY_DBG_CTRL_ADDR_MASK,
      SUN8I_HDMI_PHY_DBG_CTRL_ADDR(I2C_ADDR));
}
