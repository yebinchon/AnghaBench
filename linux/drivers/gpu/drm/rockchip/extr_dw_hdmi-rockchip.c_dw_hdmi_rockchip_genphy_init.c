
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_hdmi {int phy; } ;
struct dw_hdmi {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int phy_power_on (int ) ;

__attribute__((used)) static int dw_hdmi_rockchip_genphy_init(struct dw_hdmi *dw_hdmi, void *data,
        struct drm_display_mode *mode)
{
 struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;

 return phy_power_on(hdmi->phy);
}
