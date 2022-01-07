
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_phy {int dummy; } ;


 int HDMI_8x60_PHY_REG2_PD_DESER ;
 int HDMI_8x60_PHY_REG2_PD_DRIVE_1 ;
 int HDMI_8x60_PHY_REG2_PD_DRIVE_2 ;
 int HDMI_8x60_PHY_REG2_PD_DRIVE_3 ;
 int HDMI_8x60_PHY_REG2_PD_DRIVE_4 ;
 int HDMI_8x60_PHY_REG2_PD_PLL ;
 int HDMI_8x60_PHY_REG2_PD_PWRGEN ;
 int HDMI_8x60_PHY_REG2_RCV_SENSE_EN ;
 int HDMI_PHY_CTRL_SW_RESET ;
 int REG_HDMI_8x60_PHY_REG2 ;
 int REG_HDMI_8x60_PHY_REG3 ;
 int REG_HDMI_PHY_CTRL ;
 int hdmi_phy_write (struct hdmi_phy*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void hdmi_phy_8x60_powerdown(struct hdmi_phy *phy)
{

 hdmi_phy_write(phy, REG_HDMI_PHY_CTRL,
         HDMI_PHY_CTRL_SW_RESET);
 udelay(10);

 hdmi_phy_write(phy, REG_HDMI_PHY_CTRL, 0);

 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG2,
         HDMI_8x60_PHY_REG2_PD_DRIVE_4 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_3 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_2 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_1 |
         HDMI_8x60_PHY_REG2_PD_DESER);
 udelay(10);

 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG3, 0);

 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG2,
         HDMI_8x60_PHY_REG2_RCV_SENSE_EN |
         HDMI_8x60_PHY_REG2_PD_PWRGEN |
         HDMI_8x60_PHY_REG2_PD_PLL |
         HDMI_8x60_PHY_REG2_PD_DRIVE_4 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_3 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_2 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_1 |
         HDMI_8x60_PHY_REG2_PD_DESER);
}
