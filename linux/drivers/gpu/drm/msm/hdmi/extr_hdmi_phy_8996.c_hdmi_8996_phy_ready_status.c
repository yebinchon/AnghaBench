
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_phy {int dummy; } ;


 int BIT (int ) ;
 int DBG (char*,...) ;
 int HDMI_PLL_POLL_MAX_READS ;
 unsigned long HDMI_PLL_POLL_TIMEOUT_US ;
 int REG_HDMI_8996_PHY_STATUS ;
 int hdmi_phy_read (struct hdmi_phy*,int ) ;
 int udelay (unsigned long) ;

__attribute__((used)) static int hdmi_8996_phy_ready_status(struct hdmi_phy *phy)
{
 u32 nb_tries = HDMI_PLL_POLL_MAX_READS;
 unsigned long timeout = HDMI_PLL_POLL_TIMEOUT_US;
 u32 status;
 int phy_ready = 0;

 DBG("Waiting for PHY ready");

 while (nb_tries--) {
  status = hdmi_phy_read(phy, REG_HDMI_8996_PHY_STATUS);
  phy_ready = status & BIT(0);

  if (phy_ready)
   break;

  udelay(timeout);
 }

 DBG("PHY is %sready", phy_ready ? "" : "*not* ");

 return phy_ready;
}
