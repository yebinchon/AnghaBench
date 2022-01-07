
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;


 int dw_hdmi_phy_power_off (struct dw_hdmi*) ;

__attribute__((used)) static void dw_hdmi_phy_disable(struct dw_hdmi *hdmi, void *data)
{
 dw_hdmi_phy_power_off(hdmi);
}
