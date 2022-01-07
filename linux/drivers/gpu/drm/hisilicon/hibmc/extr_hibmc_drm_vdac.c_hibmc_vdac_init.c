
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_drm_private {struct drm_device* dev; } ;
struct drm_encoder {int possible_crtcs; } ;
struct drm_device {int dev; } ;
struct drm_connector {int dummy; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_MODE_ENCODER_DAC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct drm_connector*) ;
 int PTR_ERR (struct drm_connector*) ;
 struct drm_encoder* devm_kzalloc (int ,int,int ) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 struct drm_connector* hibmc_connector_init (struct hibmc_drm_private*) ;
 int hibmc_encoder_funcs ;
 int hibmc_encoder_helper_funcs ;

int hibmc_vdac_init(struct hibmc_drm_private *priv)
{
 struct drm_device *dev = priv->dev;
 struct drm_encoder *encoder;
 struct drm_connector *connector;
 int ret;

 connector = hibmc_connector_init(priv);
 if (IS_ERR(connector)) {
  DRM_ERROR("failed to create connector: %ld\n",
     PTR_ERR(connector));
  return PTR_ERR(connector);
 }

 encoder = devm_kzalloc(dev->dev, sizeof(*encoder), GFP_KERNEL);
 if (!encoder) {
  DRM_ERROR("failed to alloc memory when init encoder\n");
  return -ENOMEM;
 }

 encoder->possible_crtcs = 0x1;
 ret = drm_encoder_init(dev, encoder, &hibmc_encoder_funcs,
          DRM_MODE_ENCODER_DAC, ((void*)0));
 if (ret) {
  DRM_ERROR("failed to init encoder: %d\n", ret);
  return ret;
 }

 drm_encoder_helper_add(encoder, &hibmc_encoder_helper_funcs);
 drm_connector_attach_encoder(connector, encoder);

 return 0;
}
