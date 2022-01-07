
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hda_connector {struct drm_encoder* encoder; struct sti_hda* hda; } ;
struct sti_hda {struct drm_device* drm_dev; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int polled; } ;
struct drm_bridge {int * funcs; struct sti_hda* driver_private; } ;
struct device {int dummy; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_Component ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct sti_hda* dev_get_drvdata (struct device*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int drm_bridge_attach (struct drm_encoder*,struct drm_bridge*,int *) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int hda_enable_hd_dacs (struct sti_hda*,int) ;
 int sti_hda_bridge_funcs ;
 int sti_hda_connector_funcs ;
 int sti_hda_connector_helper_funcs ;
 struct drm_encoder* sti_hda_find_encoder (struct drm_device*) ;

__attribute__((used)) static int sti_hda_bind(struct device *dev, struct device *master, void *data)
{
 struct sti_hda *hda = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;
 struct drm_encoder *encoder;
 struct sti_hda_connector *connector;
 struct drm_connector *drm_connector;
 struct drm_bridge *bridge;
 int err;


 hda->drm_dev = drm_dev;

 encoder = sti_hda_find_encoder(drm_dev);
 if (!encoder)
  return -ENOMEM;

 connector = devm_kzalloc(dev, sizeof(*connector), GFP_KERNEL);
 if (!connector)
  return -ENOMEM;

 connector->hda = hda;

  bridge = devm_kzalloc(dev, sizeof(*bridge), GFP_KERNEL);
 if (!bridge)
  return -ENOMEM;

 bridge->driver_private = hda;
 bridge->funcs = &sti_hda_bridge_funcs;
 drm_bridge_attach(encoder, bridge, ((void*)0));

 connector->encoder = encoder;

 drm_connector = (struct drm_connector *)connector;

 drm_connector->polled = DRM_CONNECTOR_POLL_HPD;

 drm_connector_init(drm_dev, drm_connector,
   &sti_hda_connector_funcs, DRM_MODE_CONNECTOR_Component);
 drm_connector_helper_add(drm_connector,
   &sti_hda_connector_helper_funcs);

 err = drm_connector_attach_encoder(drm_connector, encoder);
 if (err) {
  DRM_ERROR("Failed to attach a connector to a encoder\n");
  goto err_sysfs;
 }


 hda_enable_hd_dacs(hda, 0);

 return 0;

err_sysfs:
 return -EINVAL;
}
