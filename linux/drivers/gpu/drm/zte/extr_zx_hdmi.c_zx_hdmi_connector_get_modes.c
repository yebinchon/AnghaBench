
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zx_hdmi {int sink_has_audio; int sink_is_hdmi; TYPE_1__* ddc; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int adap; } ;


 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int drm_detect_hdmi_monitor (struct edid*) ;
 int drm_detect_monitor_audio (struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int *) ;
 int kfree (struct edid*) ;
 struct zx_hdmi* to_zx_hdmi (struct drm_connector*) ;

__attribute__((used)) static int zx_hdmi_connector_get_modes(struct drm_connector *connector)
{
 struct zx_hdmi *hdmi = to_zx_hdmi(connector);
 struct edid *edid;
 int ret;

 edid = drm_get_edid(connector, &hdmi->ddc->adap);
 if (!edid)
  return 0;

 hdmi->sink_is_hdmi = drm_detect_hdmi_monitor(edid);
 hdmi->sink_has_audio = drm_detect_monitor_audio(edid);
 drm_connector_update_edid_property(connector, edid);
 ret = drm_add_edid_modes(connector, edid);
 kfree(edid);

 return ret;
}
