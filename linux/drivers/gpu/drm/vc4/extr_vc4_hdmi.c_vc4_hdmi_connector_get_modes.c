
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_hdmi_encoder {int hdmi_monitor; } ;
struct vc4_hdmi_connector {struct drm_encoder* encoder; } ;
struct vc4_dev {TYPE_1__* hdmi; } ;
struct edid {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
struct TYPE_2__ {int cec_adap; int ddc; } ;


 int ENODEV ;
 int cec_s_phys_addr_from_edid (int ,struct edid*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int drm_detect_hdmi_monitor (struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int ) ;
 int kfree (struct edid*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 struct vc4_hdmi_connector* to_vc4_hdmi_connector (struct drm_connector*) ;
 struct vc4_hdmi_encoder* to_vc4_hdmi_encoder (struct drm_encoder*) ;

__attribute__((used)) static int vc4_hdmi_connector_get_modes(struct drm_connector *connector)
{
 struct vc4_hdmi_connector *vc4_connector =
  to_vc4_hdmi_connector(connector);
 struct drm_encoder *encoder = vc4_connector->encoder;
 struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
 struct drm_device *dev = connector->dev;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 int ret = 0;
 struct edid *edid;

 edid = drm_get_edid(connector, vc4->hdmi->ddc);
 cec_s_phys_addr_from_edid(vc4->hdmi->cec_adap, edid);
 if (!edid)
  return -ENODEV;

 vc4_encoder->hdmi_monitor = drm_detect_hdmi_monitor(edid);

 drm_connector_update_edid_property(connector, edid);
 ret = drm_add_edid_modes(connector, edid);
 kfree(edid);

 return ret;
}
