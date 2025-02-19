
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dw_hdmi_phy_data {int gen; } ;
struct TYPE_2__ {struct dw_hdmi_phy_data* data; } ;
struct dw_hdmi {int dev; TYPE_1__ phy; } ;


 int ETIMEDOUT ;
 int HDMI_PHY_STAT0 ;
 int HDMI_PHY_TX_PHY_LOCK ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*) ;
 int dw_hdmi_phy_enable_powerdown (struct dw_hdmi*,int) ;
 int dw_hdmi_phy_enable_tmds (struct dw_hdmi*,int) ;
 int dw_hdmi_phy_gen2_pddq (struct dw_hdmi*,int ) ;
 int dw_hdmi_phy_gen2_txpwron (struct dw_hdmi*,int) ;
 int hdmi_readb (struct dw_hdmi*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dw_hdmi_phy_power_on(struct dw_hdmi *hdmi)
{
 const struct dw_hdmi_phy_data *phy = hdmi->phy.data;
 unsigned int i;
 u8 val;

 if (phy->gen == 1) {
  dw_hdmi_phy_enable_powerdown(hdmi, 0);


  dw_hdmi_phy_enable_tmds(hdmi, 0);
  dw_hdmi_phy_enable_tmds(hdmi, 1);
  return 0;
 }

 dw_hdmi_phy_gen2_txpwron(hdmi, 1);
 dw_hdmi_phy_gen2_pddq(hdmi, 0);


 for (i = 0; i < 5; ++i) {
  val = hdmi_readb(hdmi, HDMI_PHY_STAT0) & HDMI_PHY_TX_PHY_LOCK;
  if (val)
   break;

  usleep_range(1000, 2000);
 }

 if (!val) {
  dev_err(hdmi->dev, "PHY PLL failed to lock\n");
  return -ETIMEDOUT;
 }

 dev_dbg(hdmi->dev, "PHY PLL locked %u iterations\n", i);
 return 0;
}
