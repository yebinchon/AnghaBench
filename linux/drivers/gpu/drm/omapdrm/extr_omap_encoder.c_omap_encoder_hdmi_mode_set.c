
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_encoder {struct omap_dss_device* output; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int (* set_infoframe ) (struct omap_dss_device*,struct hdmi_avi_infoframe*) ;int (* set_hdmi_mode ) (struct omap_dss_device*,int) ;} ;
struct TYPE_4__ {TYPE_1__ hdmi; } ;


 int drm_hdmi_avi_infoframe_from_display_mode (struct hdmi_avi_infoframe*,struct drm_connector*,struct drm_display_mode*) ;
 int omap_connector_get_hdmi_mode (struct drm_connector*) ;
 int stub1 (struct omap_dss_device*,int) ;
 int stub2 (struct omap_dss_device*,struct hdmi_avi_infoframe*) ;
 struct omap_encoder* to_omap_encoder (struct drm_encoder*) ;

__attribute__((used)) static void omap_encoder_hdmi_mode_set(struct drm_connector *connector,
           struct drm_encoder *encoder,
           struct drm_display_mode *adjusted_mode)
{
 struct omap_encoder *omap_encoder = to_omap_encoder(encoder);
 struct omap_dss_device *dssdev = omap_encoder->output;
 bool hdmi_mode;

 hdmi_mode = omap_connector_get_hdmi_mode(connector);

 if (dssdev->ops->hdmi.set_hdmi_mode)
  dssdev->ops->hdmi.set_hdmi_mode(dssdev, hdmi_mode);

 if (hdmi_mode && dssdev->ops->hdmi.set_infoframe) {
  struct hdmi_avi_infoframe avi;
  int r;

  r = drm_hdmi_avi_infoframe_from_display_mode(&avi, connector,
            adjusted_mode);
  if (r == 0)
   dssdev->ops->hdmi.set_infoframe(dssdev, &avi);
 }
}
