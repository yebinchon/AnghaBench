
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_phy {int dummy; } ;


 int DBG (char*,unsigned long) ;
 int REG_HDMI_8960_PHY_REG0 ;
 int REG_HDMI_8960_PHY_REG1 ;
 int REG_HDMI_8960_PHY_REG10 ;
 int REG_HDMI_8960_PHY_REG11 ;
 int REG_HDMI_8960_PHY_REG2 ;
 int REG_HDMI_8960_PHY_REG3 ;
 int REG_HDMI_8960_PHY_REG4 ;
 int REG_HDMI_8960_PHY_REG5 ;
 int REG_HDMI_8960_PHY_REG6 ;
 int REG_HDMI_8960_PHY_REG7 ;
 int REG_HDMI_8960_PHY_REG8 ;
 int REG_HDMI_8960_PHY_REG9 ;
 int hdmi_phy_write (struct hdmi_phy*,int ,int) ;

__attribute__((used)) static void hdmi_phy_8960_powerup(struct hdmi_phy *phy,
      unsigned long int pixclock)
{
 DBG("pixclock: %lu", pixclock);

 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG2, 0x00);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG0, 0x1b);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG1, 0xf2);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG4, 0x00);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG5, 0x00);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG6, 0x00);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG7, 0x00);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG8, 0x00);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG9, 0x00);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG10, 0x00);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG11, 0x00);
 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG3, 0x20);
}
