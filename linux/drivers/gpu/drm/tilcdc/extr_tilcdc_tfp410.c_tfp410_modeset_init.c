
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_module {int dummy; } ;
struct tilcdc_drm_private {int crtc; int num_connectors; struct drm_connector** connectors; int num_encoders; struct drm_encoder** encoders; } ;
struct tfp410_module {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;
struct drm_connector {int dummy; } ;


 int ENOMEM ;
 int dvi_info ;
 struct drm_connector* tfp410_connector_create (struct drm_device*,struct tfp410_module*,struct drm_encoder*) ;
 struct drm_encoder* tfp410_encoder_create (struct drm_device*,struct tfp410_module*) ;
 int tilcdc_crtc_set_panel_info (int ,int *) ;
 struct tfp410_module* to_tfp410_module (struct tilcdc_module*) ;

__attribute__((used)) static int tfp410_modeset_init(struct tilcdc_module *mod, struct drm_device *dev)
{
 struct tfp410_module *tfp410_mod = to_tfp410_module(mod);
 struct tilcdc_drm_private *priv = dev->dev_private;
 struct drm_encoder *encoder;
 struct drm_connector *connector;

 encoder = tfp410_encoder_create(dev, tfp410_mod);
 if (!encoder)
  return -ENOMEM;

 connector = tfp410_connector_create(dev, tfp410_mod, encoder);
 if (!connector)
  return -ENOMEM;

 priv->encoders[priv->num_encoders++] = encoder;
 priv->connectors[priv->num_connectors++] = connector;

 tilcdc_crtc_set_panel_info(priv->crtc, &dvi_info);
 return 0;
}
