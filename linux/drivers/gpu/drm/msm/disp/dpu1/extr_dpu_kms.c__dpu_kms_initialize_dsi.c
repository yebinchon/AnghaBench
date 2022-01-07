
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_drm_private {scalar_t__* dsi; int num_encoders; struct drm_encoder** encoders; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct dpu_kms {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int DPU_ERROR (char*,...) ;
 int DRM_MODE_ENCODER_DSI ;
 scalar_t__ IS_ERR (struct drm_encoder*) ;
 int PTR_ERR (struct drm_encoder*) ;
 struct drm_encoder* dpu_encoder_init (struct drm_device*,int ) ;
 int msm_dsi_modeset_init (scalar_t__,struct drm_device*,struct drm_encoder*) ;

__attribute__((used)) static int _dpu_kms_initialize_dsi(struct drm_device *dev,
        struct msm_drm_private *priv,
        struct dpu_kms *dpu_kms)
{
 struct drm_encoder *encoder = ((void*)0);
 int i, rc = 0;

 if (!(priv->dsi[0] || priv->dsi[1]))
  return rc;


 encoder = dpu_encoder_init(dev, DRM_MODE_ENCODER_DSI);
 if (IS_ERR(encoder)) {
  DPU_ERROR("encoder init failed for dsi display\n");
  return PTR_ERR(encoder);
 }

 priv->encoders[priv->num_encoders++] = encoder;

 for (i = 0; i < ARRAY_SIZE(priv->dsi); i++) {
  if (!priv->dsi[i])
   continue;

  rc = msm_dsi_modeset_init(priv->dsi[i], dev, encoder);
  if (rc) {
   DPU_ERROR("modeset_init failed for dsi[%d], rc = %d\n",
    i, rc);
   break;
  }
 }

 return rc;
}
