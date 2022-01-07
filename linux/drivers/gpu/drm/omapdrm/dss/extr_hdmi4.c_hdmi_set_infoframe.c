
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_avi_infoframe {int dummy; } ;
struct TYPE_2__ {struct hdmi_avi_infoframe infoframe; } ;
struct omap_hdmi {TYPE_1__ cfg; } ;
struct omap_dss_device {int dummy; } ;


 struct omap_hdmi* dssdev_to_hdmi (struct omap_dss_device*) ;

__attribute__((used)) static int hdmi_set_infoframe(struct omap_dss_device *dssdev,
  const struct hdmi_avi_infoframe *avi)
{
 struct omap_hdmi *hdmi = dssdev_to_hdmi(dssdev);

 hdmi->cfg.infoframe = *avi;
 return 0;
}
