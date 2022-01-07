
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_phy {int dummy; } ;


 int REG_HDMI_8x74_ANA_CFG0 ;
 int REG_HDMI_8x74_ANA_CFG1 ;
 int REG_HDMI_8x74_BIST_CFG0 ;
 int REG_HDMI_8x74_BIST_PATN0 ;
 int REG_HDMI_8x74_BIST_PATN1 ;
 int REG_HDMI_8x74_BIST_PATN2 ;
 int REG_HDMI_8x74_BIST_PATN3 ;
 int REG_HDMI_8x74_PD_CTRL1 ;
 int hdmi_phy_write (struct hdmi_phy*,int ,int) ;

__attribute__((used)) static void hdmi_phy_8x74_powerup(struct hdmi_phy *phy,
  unsigned long int pixclock)
{
 hdmi_phy_write(phy, REG_HDMI_8x74_ANA_CFG0, 0x1b);
 hdmi_phy_write(phy, REG_HDMI_8x74_ANA_CFG1, 0xf2);
 hdmi_phy_write(phy, REG_HDMI_8x74_BIST_CFG0, 0x0);
 hdmi_phy_write(phy, REG_HDMI_8x74_BIST_PATN0, 0x0);
 hdmi_phy_write(phy, REG_HDMI_8x74_BIST_PATN1, 0x0);
 hdmi_phy_write(phy, REG_HDMI_8x74_BIST_PATN2, 0x0);
 hdmi_phy_write(phy, REG_HDMI_8x74_BIST_PATN3, 0x0);
 hdmi_phy_write(phy, REG_HDMI_8x74_PD_CTRL1, 0x20);
}
