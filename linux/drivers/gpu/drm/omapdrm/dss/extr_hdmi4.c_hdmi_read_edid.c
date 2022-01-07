
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_hdmi {int core_enabled; int core; } ;
struct omap_dss_device {int dummy; } ;


 int CEC_PHYS_ADDR_INVALID ;
 int cec_get_edid_phys_addr (int *,int,int *) ;
 struct omap_hdmi* dssdev_to_hdmi (struct omap_dss_device*) ;
 int hdmi4_cec_set_phys_addr (int *,int ) ;
 int hdmi4_core_disable (int *) ;
 int hdmi4_core_enable (int *) ;
 int read_edid (struct omap_hdmi*,int *,int) ;

__attribute__((used)) static int hdmi_read_edid(struct omap_dss_device *dssdev,
  u8 *edid, int len)
{
 struct omap_hdmi *hdmi = dssdev_to_hdmi(dssdev);
 bool need_enable;
 int r;

 need_enable = hdmi->core_enabled == 0;

 if (need_enable) {
  r = hdmi4_core_enable(&hdmi->core);
  if (r)
   return r;
 }

 r = read_edid(hdmi, edid, len);
 if (r >= 256)
  hdmi4_cec_set_phys_addr(&hdmi->core,
     cec_get_edid_phys_addr(edid, r, ((void*)0)));
 else
  hdmi4_cec_set_phys_addr(&hdmi->core, CEC_PHYS_ADDR_INVALID);
 if (need_enable)
  hdmi4_core_disable(&hdmi->core);

 return r;
}
