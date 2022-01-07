
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int possible_crtcs; scalar_t__ possible_clones; } ;
struct drm_device {int dev; } ;
struct drm_connector {int dummy; } ;
struct device_node {int dummy; } ;
struct arcpgu_drm_connector {struct drm_connector connector; } ;


 int DRM_MODE_CONNECTOR_VIRTUAL ;
 int DRM_MODE_ENCODER_VIRTUAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int arcpgu_drm_connector_funcs ;
 int arcpgu_drm_connector_helper_funcs ;
 int arcpgu_drm_encoder_funcs ;
 int dev_err (int ,char*) ;
 void* devm_kzalloc (int ,int,int ) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;

int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
{
 struct arcpgu_drm_connector *arcpgu_connector;
 struct drm_encoder *encoder;
 struct drm_connector *connector;
 int ret;

 encoder = devm_kzalloc(drm->dev, sizeof(*encoder), GFP_KERNEL);
 if (encoder == ((void*)0))
  return -ENOMEM;

 encoder->possible_crtcs = 1;
 encoder->possible_clones = 0;

 ret = drm_encoder_init(drm, encoder, &arcpgu_drm_encoder_funcs,
          DRM_MODE_ENCODER_VIRTUAL, ((void*)0));
 if (ret)
  return ret;

 arcpgu_connector = devm_kzalloc(drm->dev, sizeof(*arcpgu_connector),
     GFP_KERNEL);
 if (!arcpgu_connector) {
  ret = -ENOMEM;
  goto error_encoder_cleanup;
 }

 connector = &arcpgu_connector->connector;
 drm_connector_helper_add(connector, &arcpgu_drm_connector_helper_funcs);

 ret = drm_connector_init(drm, connector, &arcpgu_drm_connector_funcs,
   DRM_MODE_CONNECTOR_VIRTUAL);
 if (ret < 0) {
  dev_err(drm->dev, "failed to initialize drm connector\n");
  goto error_encoder_cleanup;
 }

 ret = drm_connector_attach_encoder(connector, encoder);
 if (ret < 0) {
  dev_err(drm->dev, "could not attach connector to encoder\n");
  drm_connector_unregister(connector);
  goto error_connector_cleanup;
 }

 return 0;

error_connector_cleanup:
 drm_connector_cleanup(connector);

error_encoder_cleanup:
 drm_encoder_cleanup(encoder);
 return ret;
}
