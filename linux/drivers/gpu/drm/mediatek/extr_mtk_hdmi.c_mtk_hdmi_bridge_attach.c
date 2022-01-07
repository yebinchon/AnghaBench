
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int interlace_allowed; int doublescan_allowed; int polled; } ;
struct mtk_hdmi {int dev; int cec_dev; scalar_t__ next_bridge; TYPE_1__ conn; } ;
struct drm_bridge {TYPE_4__* encoder; } ;
struct TYPE_7__ {int dev; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int dev_err (int ,char*,int) ;
 int drm_bridge_attach (TYPE_4__*,scalar_t__,struct drm_bridge*) ;
 int drm_connector_attach_encoder (TYPE_1__*,TYPE_4__*) ;
 int drm_connector_helper_add (TYPE_1__*,int *) ;
 int drm_connector_init (int ,TYPE_1__*,int *,int ) ;
 struct mtk_hdmi* hdmi_ctx_from_bridge (struct drm_bridge*) ;
 int mtk_cec_set_hpd_event (int ,int ,int ) ;
 int mtk_hdmi_connector_funcs ;
 int mtk_hdmi_connector_helper_funcs ;
 int mtk_hdmi_hpd_event ;

__attribute__((used)) static int mtk_hdmi_bridge_attach(struct drm_bridge *bridge)
{
 struct mtk_hdmi *hdmi = hdmi_ctx_from_bridge(bridge);
 int ret;

 ret = drm_connector_init(bridge->encoder->dev, &hdmi->conn,
     &mtk_hdmi_connector_funcs,
     DRM_MODE_CONNECTOR_HDMIA);
 if (ret) {
  dev_err(hdmi->dev, "Failed to initialize connector: %d\n", ret);
  return ret;
 }
 drm_connector_helper_add(&hdmi->conn, &mtk_hdmi_connector_helper_funcs);

 hdmi->conn.polled = DRM_CONNECTOR_POLL_HPD;
 hdmi->conn.interlace_allowed = 1;
 hdmi->conn.doublescan_allowed = 0;

 ret = drm_connector_attach_encoder(&hdmi->conn,
      bridge->encoder);
 if (ret) {
  dev_err(hdmi->dev,
   "Failed to attach connector to encoder: %d\n", ret);
  return ret;
 }

 if (hdmi->next_bridge) {
  ret = drm_bridge_attach(bridge->encoder, hdmi->next_bridge,
     bridge);
  if (ret) {
   dev_err(hdmi->dev,
    "Failed to attach external bridge: %d\n", ret);
   return ret;
  }
 }

 mtk_cec_set_hpd_event(hdmi->cec_dev, mtk_hdmi_hpd_event, hdmi->dev);

 return 0;
}
