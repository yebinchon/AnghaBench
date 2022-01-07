
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdmi_dvi_mode; } ;
struct omap_hdmi {TYPE_1__ cfg; } ;
struct omap_dss_device {int dummy; } ;


 int HDMI_DVI ;
 int HDMI_HDMI ;
 struct omap_hdmi* dssdev_to_hdmi (struct omap_dss_device*) ;

__attribute__((used)) static int hdmi_set_hdmi_mode(struct omap_dss_device *dssdev,
  bool hdmi_mode)
{
 struct omap_hdmi *hdmi = dssdev_to_hdmi(dssdev);

 hdmi->cfg.hdmi_dvi_mode = hdmi_mode ? HDMI_HDMI : HDMI_DVI;
 return 0;
}
