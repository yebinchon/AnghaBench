
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dvi_mode; int ddc_adpt; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int ENODEV ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int drm_detect_monitor_audio (struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int ) ;
 struct mtk_hdmi* hdmi_ctx_from_conn (struct drm_connector*) ;
 int kfree (struct edid*) ;

__attribute__((used)) static int mtk_hdmi_conn_get_modes(struct drm_connector *conn)
{
 struct mtk_hdmi *hdmi = hdmi_ctx_from_conn(conn);
 struct edid *edid;
 int ret;

 if (!hdmi->ddc_adpt)
  return -ENODEV;

 edid = drm_get_edid(conn, hdmi->ddc_adpt);
 if (!edid)
  return -ENODEV;

 hdmi->dvi_mode = !drm_detect_monitor_audio(edid);

 drm_connector_update_edid_property(conn, edid);

 ret = drm_add_edid_modes(conn, edid);
 kfree(edid);
 return ret;
}
