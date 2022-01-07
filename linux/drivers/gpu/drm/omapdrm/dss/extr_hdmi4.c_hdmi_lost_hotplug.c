
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {int core; } ;
struct omap_dss_device {int dummy; } ;


 int CEC_PHYS_ADDR_INVALID ;
 struct omap_hdmi* dssdev_to_hdmi (struct omap_dss_device*) ;
 int hdmi4_cec_set_phys_addr (int *,int ) ;

__attribute__((used)) static void hdmi_lost_hotplug(struct omap_dss_device *dssdev)
{
 struct omap_hdmi *hdmi = dssdev_to_hdmi(dssdev);

 hdmi4_cec_set_phys_addr(&hdmi->core, CEC_PHYS_ADDR_INVALID);
}
