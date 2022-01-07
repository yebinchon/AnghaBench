
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;


 int HDMI_MC_PHYRSTZ ;
 int HDMI_MC_PHYRSTZ_PHYRSTZ ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;

void dw_hdmi_phy_reset(struct dw_hdmi *hdmi)
{

 hdmi_writeb(hdmi, HDMI_MC_PHYRSTZ_PHYRSTZ, HDMI_MC_PHYRSTZ);
 hdmi_writeb(hdmi, 0, HDMI_MC_PHYRSTZ);
}
