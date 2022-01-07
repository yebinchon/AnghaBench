
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int dummy; } ;


 int HDMI_CORE_RSTOUT ;
 int HDMI_PHY_RSTOUT ;
 int HDMI_PHY_SW_RSTOUT ;
 int hdmi_reg_writemask (struct hdmi_context*,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hdmiphy_conf_reset(struct hdmi_context *hdata)
{
 hdmi_reg_writemask(hdata, HDMI_CORE_RSTOUT, 0, 1);
 usleep_range(10000, 12000);
 hdmi_reg_writemask(hdata, HDMI_CORE_RSTOUT, ~0, 1);
 usleep_range(10000, 12000);
 hdmi_reg_writemask(hdata, HDMI_PHY_RSTOUT, ~0, HDMI_PHY_SW_RSTOUT);
 usleep_range(10000, 12000);
 hdmi_reg_writemask(hdata, HDMI_PHY_RSTOUT, 0, HDMI_PHY_SW_RSTOUT);
 usleep_range(10000, 12000);
}
