
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int interlace_allowed; } ;
struct drm_encoder {int possible_crtcs; } ;
struct meson_venc_cvbs {struct drm_connector connector; struct drm_encoder encoder; struct meson_drm* priv; } ;
struct meson_drm {int dev; struct drm_device* drm; } ;
struct drm_device {int dev; } ;


 int BIT (int ) ;
 int DRM_MODE_CONNECTOR_Composite ;
 int DRM_MODE_ENCODER_TVDAC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 struct meson_venc_cvbs* devm_kzalloc (int ,int,int ) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,char*) ;
 int meson_cvbs_connector_funcs ;
 int meson_cvbs_connector_helper_funcs ;
 int meson_venc_cvbs_connector_is_available (struct meson_drm*) ;
 int meson_venc_cvbs_encoder_funcs ;
 int meson_venc_cvbs_encoder_helper_funcs ;

int meson_venc_cvbs_create(struct meson_drm *priv)
{
 struct drm_device *drm = priv->drm;
 struct meson_venc_cvbs *meson_venc_cvbs;
 struct drm_connector *connector;
 struct drm_encoder *encoder;
 int ret;

 if (!meson_venc_cvbs_connector_is_available(priv)) {
  dev_info(drm->dev, "CVBS Output connector not available\n");
  return 0;
 }

 meson_venc_cvbs = devm_kzalloc(priv->dev, sizeof(*meson_venc_cvbs),
           GFP_KERNEL);
 if (!meson_venc_cvbs)
  return -ENOMEM;

 meson_venc_cvbs->priv = priv;
 encoder = &meson_venc_cvbs->encoder;
 connector = &meson_venc_cvbs->connector;



 drm_connector_helper_add(connector,
     &meson_cvbs_connector_helper_funcs);

 ret = drm_connector_init(drm, connector, &meson_cvbs_connector_funcs,
     DRM_MODE_CONNECTOR_Composite);
 if (ret) {
  dev_err(priv->dev, "Failed to init CVBS connector\n");
  return ret;
 }

 connector->interlace_allowed = 1;



 drm_encoder_helper_add(encoder, &meson_venc_cvbs_encoder_helper_funcs);

 ret = drm_encoder_init(drm, encoder, &meson_venc_cvbs_encoder_funcs,
          DRM_MODE_ENCODER_TVDAC, "meson_venc_cvbs");
 if (ret) {
  dev_err(priv->dev, "Failed to init CVBS encoder\n");
  return ret;
 }

 encoder->possible_crtcs = BIT(0);

 drm_connector_attach_encoder(connector, encoder);

 return 0;
}
