
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_hdmi {int phy; } ;
struct dw_hdmi {int dummy; } ;


 int phy_power_off (int ) ;

__attribute__((used)) static void dw_hdmi_rockchip_genphy_disable(struct dw_hdmi *dw_hdmi, void *data)
{
 struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;

 phy_power_off(hdmi->phy);
}
