
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int dw_hdmi_phy_sel_data_en_pol (struct dw_hdmi*,int) ;
 int dw_hdmi_phy_sel_interface_control (struct dw_hdmi*,int ) ;
 int hdmi_phy_configure (struct dw_hdmi*) ;

__attribute__((used)) static int dw_hdmi_phy_init(struct dw_hdmi *hdmi, void *data,
       struct drm_display_mode *mode)
{
 int i, ret;


 for (i = 0; i < 2; i++) {
  dw_hdmi_phy_sel_data_en_pol(hdmi, 1);
  dw_hdmi_phy_sel_interface_control(hdmi, 0);

  ret = hdmi_phy_configure(hdmi);
  if (ret)
   return ret;
 }

 return 0;
}
