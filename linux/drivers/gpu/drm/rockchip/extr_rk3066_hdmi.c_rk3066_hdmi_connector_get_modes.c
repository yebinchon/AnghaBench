
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sink_is_hdmi; } ;
struct rk3066_hdmi {TYPE_1__ hdmi_data; int ddc; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int drm_detect_hdmi_monitor (struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int ) ;
 int kfree (struct edid*) ;
 struct rk3066_hdmi* to_rk3066_hdmi (struct drm_connector*) ;

__attribute__((used)) static int rk3066_hdmi_connector_get_modes(struct drm_connector *connector)
{
 struct rk3066_hdmi *hdmi = to_rk3066_hdmi(connector);
 struct edid *edid;
 int ret = 0;

 if (!hdmi->ddc)
  return 0;

 edid = drm_get_edid(connector, hdmi->ddc);
 if (edid) {
  hdmi->hdmi_data.sink_is_hdmi = drm_detect_hdmi_monitor(edid);
  drm_connector_update_edid_property(connector, edid);
  ret = drm_add_edid_modes(connector, edid);
  kfree(edid);
 }

 return ret;
}
