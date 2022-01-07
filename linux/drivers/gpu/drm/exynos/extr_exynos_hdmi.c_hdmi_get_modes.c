
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int dvi_mode; int notifier; int dev; int ddc_adpt; } ;
struct edid {int height_cm; int width_cm; } ;
struct drm_connector {int dummy; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,char*,int ,int ) ;
 int ENODEV ;
 int cec_notifier_set_phys_addr_from_edid (int ,struct edid*) ;
 struct hdmi_context* connector_to_hdmi (struct drm_connector*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int drm_detect_hdmi_monitor (struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int ) ;
 int kfree (struct edid*) ;

__attribute__((used)) static int hdmi_get_modes(struct drm_connector *connector)
{
 struct hdmi_context *hdata = connector_to_hdmi(connector);
 struct edid *edid;
 int ret;

 if (!hdata->ddc_adpt)
  return -ENODEV;

 edid = drm_get_edid(connector, hdata->ddc_adpt);
 if (!edid)
  return -ENODEV;

 hdata->dvi_mode = !drm_detect_hdmi_monitor(edid);
 DRM_DEV_DEBUG_KMS(hdata->dev, "%s : width[%d] x height[%d]\n",
     (hdata->dvi_mode ? "dvi monitor" : "hdmi monitor"),
     edid->width_cm, edid->height_cm);

 drm_connector_update_edid_property(connector, edid);
 cec_notifier_set_phys_addr_from_edid(hdata->notifier, edid);

 ret = drm_add_edid_modes(connector, edid);

 kfree(edid);

 return ret;
}
