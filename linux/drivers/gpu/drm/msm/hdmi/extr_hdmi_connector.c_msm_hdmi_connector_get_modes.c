
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdmi_connector {struct hdmi* hdmi; } ;
struct hdmi {int hdmi_mode; int i2c; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int HDMI_CTRL_ENABLE ;
 int REG_HDMI_CTRL ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int drm_detect_hdmi_monitor (struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int ) ;
 int hdmi_read (struct hdmi*,int ) ;
 int hdmi_write (struct hdmi*,int ,int) ;
 int kfree (struct edid*) ;
 struct hdmi_connector* to_hdmi_connector (struct drm_connector*) ;

__attribute__((used)) static int msm_hdmi_connector_get_modes(struct drm_connector *connector)
{
 struct hdmi_connector *hdmi_connector = to_hdmi_connector(connector);
 struct hdmi *hdmi = hdmi_connector->hdmi;
 struct edid *edid;
 uint32_t hdmi_ctrl;
 int ret = 0;

 hdmi_ctrl = hdmi_read(hdmi, REG_HDMI_CTRL);
 hdmi_write(hdmi, REG_HDMI_CTRL, hdmi_ctrl | HDMI_CTRL_ENABLE);

 edid = drm_get_edid(connector, hdmi->i2c);

 hdmi_write(hdmi, REG_HDMI_CTRL, hdmi_ctrl);

 hdmi->hdmi_mode = drm_detect_hdmi_monitor(edid);
 drm_connector_update_edid_property(connector, edid);

 if (edid) {
  ret = drm_add_edid_modes(connector, edid);
  kfree(edid);
 }

 return ret;
}
