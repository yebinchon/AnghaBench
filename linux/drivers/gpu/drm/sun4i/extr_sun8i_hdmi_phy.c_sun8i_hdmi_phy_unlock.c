
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_hdmi_phy {int regs; } ;


 int SUN8I_HDMI_PHY_READ_EN_MAGIC ;
 int SUN8I_HDMI_PHY_READ_EN_REG ;
 int SUN8I_HDMI_PHY_UNSCRAMBLE_MAGIC ;
 int SUN8I_HDMI_PHY_UNSCRAMBLE_REG ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void sun8i_hdmi_phy_unlock(struct sun8i_hdmi_phy *phy)
{

 regmap_write(phy->regs, SUN8I_HDMI_PHY_READ_EN_REG,
       SUN8I_HDMI_PHY_READ_EN_MAGIC);


 regmap_write(phy->regs, SUN8I_HDMI_PHY_UNSCRAMBLE_REG,
       SUN8I_HDMI_PHY_UNSCRAMBLE_MAGIC);
}
