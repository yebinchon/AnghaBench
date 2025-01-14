
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct drm_encoder* encoder; struct drm_connector base; } ;
struct drm_encoder {int dummy; } ;
struct fsl_dcu_drm_device {int dev; int drm; TYPE_1__ connector; struct drm_encoder encoder; } ;
struct drm_panel {int dummy; } ;


 int DRM_MODE_CONNECTOR_LVDS ;
 int connector_helper_funcs ;
 int dev_err (int ,char*) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (int ,struct drm_connector*,int *,int ) ;
 int drm_connector_register (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int drm_panel_attach (struct drm_panel*,struct drm_connector*) ;
 int fsl_dcu_drm_connector_funcs ;

__attribute__((used)) static int fsl_dcu_attach_panel(struct fsl_dcu_drm_device *fsl_dev,
     struct drm_panel *panel)
{
 struct drm_encoder *encoder = &fsl_dev->encoder;
 struct drm_connector *connector = &fsl_dev->connector.base;
 int ret;

 fsl_dev->connector.encoder = encoder;

 ret = drm_connector_init(fsl_dev->drm, connector,
     &fsl_dcu_drm_connector_funcs,
     DRM_MODE_CONNECTOR_LVDS);
 if (ret < 0)
  return ret;

 drm_connector_helper_add(connector, &connector_helper_funcs);
 ret = drm_connector_register(connector);
 if (ret < 0)
  goto err_cleanup;

 ret = drm_connector_attach_encoder(connector, encoder);
 if (ret < 0)
  goto err_sysfs;

 ret = drm_panel_attach(panel, connector);
 if (ret) {
  dev_err(fsl_dev->dev, "failed to attach panel\n");
  goto err_sysfs;
 }

 return 0;

err_sysfs:
 drm_connector_unregister(connector);
err_cleanup:
 drm_connector_cleanup(connector);
 return ret;
}
