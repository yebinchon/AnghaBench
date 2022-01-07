
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_phy {int dummy; } ;


 int HDMI_8x60_PHY_REG0_DESER_DEL_CTRL (int) ;
 int HDMI_8x60_PHY_REG12_FORCE_LOCK ;
 int HDMI_8x60_PHY_REG12_PLL_LOCK_DETECT_EN ;
 int HDMI_8x60_PHY_REG12_RETIMING_EN ;
 int HDMI_8x60_PHY_REG1_DTEST_MUX_SEL (int) ;
 int HDMI_8x60_PHY_REG1_OUTVOL_SWING_CTRL (int) ;
 int HDMI_8x60_PHY_REG2_PD_DESER ;
 int HDMI_8x60_PHY_REG2_PD_DRIVE_1 ;
 int HDMI_8x60_PHY_REG2_PD_DRIVE_2 ;
 int HDMI_8x60_PHY_REG2_PD_DRIVE_3 ;
 int HDMI_8x60_PHY_REG2_PD_DRIVE_4 ;
 int HDMI_8x60_PHY_REG2_PD_PLL ;
 int HDMI_8x60_PHY_REG2_PD_PWRGEN ;
 int HDMI_8x60_PHY_REG2_RCV_SENSE_EN ;
 int HDMI_8x60_PHY_REG3_PLL_ENABLE ;
 int REG_HDMI_8x60_PHY_REG0 ;
 int REG_HDMI_8x60_PHY_REG1 ;
 int REG_HDMI_8x60_PHY_REG10 ;
 int REG_HDMI_8x60_PHY_REG11 ;
 int REG_HDMI_8x60_PHY_REG12 ;
 int REG_HDMI_8x60_PHY_REG2 ;
 int REG_HDMI_8x60_PHY_REG3 ;
 int REG_HDMI_8x60_PHY_REG4 ;
 int REG_HDMI_8x60_PHY_REG5 ;
 int REG_HDMI_8x60_PHY_REG6 ;
 int REG_HDMI_8x60_PHY_REG7 ;
 int REG_HDMI_8x60_PHY_REG8 ;
 int REG_HDMI_8x60_PHY_REG9 ;
 int hdmi_phy_write (struct hdmi_phy*,int ,int) ;

__attribute__((used)) static void hdmi_phy_8x60_powerup(struct hdmi_phy *phy,
  unsigned long int pixclock)
{

 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG0,
         HDMI_8x60_PHY_REG0_DESER_DEL_CTRL(3));

 if (pixclock == 27000000) {

  hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG1,
          HDMI_8x60_PHY_REG1_DTEST_MUX_SEL(5) |
          HDMI_8x60_PHY_REG1_OUTVOL_SWING_CTRL(3));
 } else {
  hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG1,
          HDMI_8x60_PHY_REG1_DTEST_MUX_SEL(5) |
          HDMI_8x60_PHY_REG1_OUTVOL_SWING_CTRL(4));
 }


 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG2,
         HDMI_8x60_PHY_REG2_PD_PWRGEN |
         HDMI_8x60_PHY_REG2_PD_PLL |
         HDMI_8x60_PHY_REG2_PD_DRIVE_4 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_3 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_2 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_1 |
         HDMI_8x60_PHY_REG2_PD_DESER);


 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG2,
         HDMI_8x60_PHY_REG2_PD_PLL |
         HDMI_8x60_PHY_REG2_PD_DRIVE_4 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_3 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_2 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_1 |
         HDMI_8x60_PHY_REG2_PD_DESER);


 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG2,
         HDMI_8x60_PHY_REG2_PD_DRIVE_4 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_3 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_2 |
         HDMI_8x60_PHY_REG2_PD_DRIVE_1 |
         HDMI_8x60_PHY_REG2_PD_DESER);


 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG3,
         HDMI_8x60_PHY_REG3_PLL_ENABLE);


 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG9, 0);




 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG12,
         HDMI_8x60_PHY_REG12_RETIMING_EN |
         HDMI_8x60_PHY_REG12_PLL_LOCK_DETECT_EN);


 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG2,
         HDMI_8x60_PHY_REG2_PD_DESER);


 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG2,
         HDMI_8x60_PHY_REG2_RCV_SENSE_EN |
         HDMI_8x60_PHY_REG2_PD_DESER);

 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG4, 0);
 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG5, 0);
 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG6, 0);
 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG7, 0);
 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG8, 0);
 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG9, 0);
 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG10, 0);
 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG11, 0);


 hdmi_phy_write(phy, REG_HDMI_8x60_PHY_REG12,
         HDMI_8x60_PHY_REG12_RETIMING_EN |
         HDMI_8x60_PHY_REG12_PLL_LOCK_DETECT_EN |
         HDMI_8x60_PHY_REG12_FORCE_LOCK);
}
