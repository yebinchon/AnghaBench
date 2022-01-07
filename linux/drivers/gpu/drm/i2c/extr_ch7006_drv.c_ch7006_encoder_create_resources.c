
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_config {int tv_flicker_reduction_property; int tv_contrast_property; int tv_brightness_property; int tv_mode_property; int tv_bottom_margin_property; int tv_left_margin_property; int tv_subconnector_property; int tv_select_subconnector_property; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_connector {int base; } ;
struct ch7006_priv {int scale; int scale_property; int flicker; int contrast; int brightness; int norm; int vmargin; int hmargin; int subconnector; int select_subconnector; } ;


 int ENOMEM ;
 int NUM_TV_NORMS ;
 int ch7006_tv_norm_names ;
 int drm_mode_create_tv_properties (struct drm_device*,int ,int ) ;
 int drm_object_attach_property (int *,int ,int ) ;
 int drm_property_create_range (struct drm_device*,int ,char*,int ,int) ;
 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;

__attribute__((used)) static int ch7006_encoder_create_resources(struct drm_encoder *encoder,
        struct drm_connector *connector)
{
 struct ch7006_priv *priv = to_ch7006_priv(encoder);
 struct drm_device *dev = encoder->dev;
 struct drm_mode_config *conf = &dev->mode_config;

 drm_mode_create_tv_properties(dev, NUM_TV_NORMS, ch7006_tv_norm_names);

 priv->scale_property = drm_property_create_range(dev, 0, "scale", 0, 2);
 if (!priv->scale_property)
  return -ENOMEM;

 drm_object_attach_property(&connector->base, conf->tv_select_subconnector_property,
          priv->select_subconnector);
 drm_object_attach_property(&connector->base, conf->tv_subconnector_property,
          priv->subconnector);
 drm_object_attach_property(&connector->base, conf->tv_left_margin_property,
          priv->hmargin);
 drm_object_attach_property(&connector->base, conf->tv_bottom_margin_property,
          priv->vmargin);
 drm_object_attach_property(&connector->base, conf->tv_mode_property,
          priv->norm);
 drm_object_attach_property(&connector->base, conf->tv_brightness_property,
          priv->brightness);
 drm_object_attach_property(&connector->base, conf->tv_contrast_property,
          priv->contrast);
 drm_object_attach_property(&connector->base, conf->tv_flicker_reduction_property,
          priv->flicker);
 drm_object_attach_property(&connector->base, priv->scale_property,
          priv->scale);

 return 0;
}
