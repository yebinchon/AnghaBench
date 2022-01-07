
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_hdmi {int core_enabled; } ;
struct omap_dss_device {int dummy; } ;


 struct omap_hdmi* dssdev_to_hdmi (struct omap_dss_device*) ;
 int hdmi_core_disable (struct omap_hdmi*) ;
 int hdmi_core_enable (struct omap_hdmi*) ;
 int read_edid (struct omap_hdmi*,int *,int) ;

__attribute__((used)) static int hdmi_read_edid(struct omap_dss_device *dssdev,
  u8 *edid, int len)
{
 struct omap_hdmi *hdmi = dssdev_to_hdmi(dssdev);
 bool need_enable;
 int r;

 need_enable = hdmi->core_enabled == 0;

 if (need_enable) {
  r = hdmi_core_enable(hdmi);
  if (r)
   return r;
 }

 r = read_edid(hdmi, edid, len);

 if (need_enable)
  hdmi_core_disable(hdmi);

 return r;
}
