
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_phy {int dummy; } ;


 int DBG (char*) ;
 int REG_HDMI_8960_PHY_REG2 ;
 int hdmi_phy_write (struct hdmi_phy*,int ,int) ;

__attribute__((used)) static void hdmi_phy_8960_powerdown(struct hdmi_phy *phy)
{
 DBG("");

 hdmi_phy_write(phy, REG_HDMI_8960_PHY_REG2, 0x7f);
}
