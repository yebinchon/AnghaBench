
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_hdmi_connector {struct drm_encoder* encoder; struct sti_hdmi* hdmi; } ;
struct TYPE_2__ {int cea; } ;
struct sti_hdmi {struct drm_connector* drm_connector; TYPE_1__ audio; int ddc_adapt; struct drm_device* drm_dev; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int polled; } ;
struct drm_bridge {int * funcs; struct sti_hdmi* driver_private; } ;
struct device {int dummy; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int EINVAL ;
 int GFP_KERNEL ;
 int HDMI_DEFAULT_INT ;
 int HDMI_INT_EN ;
 struct sti_hdmi* dev_get_drvdata (struct device*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int drm_bridge_attach (struct drm_encoder*,struct drm_bridge*,int *) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init_with_ddc (struct drm_device*,struct drm_connector*,int *,int ,int ) ;
 int hdmi_audio_infoframe_init (int *) ;
 int hdmi_write (struct sti_hdmi*,int ,int ) ;
 int sti_hdmi_bridge_funcs ;
 int sti_hdmi_connector_funcs ;
 int sti_hdmi_connector_helper_funcs ;
 int sti_hdmi_connector_init_property (struct drm_device*,struct drm_connector*) ;
 struct drm_encoder* sti_hdmi_find_encoder (struct drm_device*) ;
 int sti_hdmi_register_audio_driver (struct device*,struct sti_hdmi*) ;

__attribute__((used)) static int sti_hdmi_bind(struct device *dev, struct device *master, void *data)
{
 struct sti_hdmi *hdmi = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;
 struct drm_encoder *encoder;
 struct sti_hdmi_connector *connector;
 struct drm_connector *drm_connector;
 struct drm_bridge *bridge;
 int err;


 hdmi->drm_dev = drm_dev;

 encoder = sti_hdmi_find_encoder(drm_dev);
 if (!encoder)
  return -EINVAL;

 connector = devm_kzalloc(dev, sizeof(*connector), GFP_KERNEL);
 if (!connector)
  return -EINVAL;

 connector->hdmi = hdmi;

 bridge = devm_kzalloc(dev, sizeof(*bridge), GFP_KERNEL);
 if (!bridge)
  return -EINVAL;

 bridge->driver_private = hdmi;
 bridge->funcs = &sti_hdmi_bridge_funcs;
 drm_bridge_attach(encoder, bridge, ((void*)0));

 connector->encoder = encoder;

 drm_connector = (struct drm_connector *)connector;

 drm_connector->polled = DRM_CONNECTOR_POLL_HPD;

 drm_connector_init_with_ddc(drm_dev, drm_connector,
        &sti_hdmi_connector_funcs,
        DRM_MODE_CONNECTOR_HDMIA,
        hdmi->ddc_adapt);
 drm_connector_helper_add(drm_connector,
   &sti_hdmi_connector_helper_funcs);


 sti_hdmi_connector_init_property(drm_dev, drm_connector);

 hdmi->drm_connector = drm_connector;

 err = drm_connector_attach_encoder(drm_connector, encoder);
 if (err) {
  DRM_ERROR("Failed to attach a connector to a encoder\n");
  goto err_sysfs;
 }

 err = sti_hdmi_register_audio_driver(dev, hdmi);
 if (err) {
  DRM_ERROR("Failed to attach an audio codec\n");
  goto err_sysfs;
 }


 err = hdmi_audio_infoframe_init(&hdmi->audio.cea);
 if (err) {
  DRM_ERROR("Failed to init audio infoframe\n");
  goto err_sysfs;
 }


 hdmi_write(hdmi, HDMI_DEFAULT_INT, HDMI_INT_EN);

 return 0;

err_sysfs:
 hdmi->drm_connector = ((void*)0);
 return -EINVAL;
}
