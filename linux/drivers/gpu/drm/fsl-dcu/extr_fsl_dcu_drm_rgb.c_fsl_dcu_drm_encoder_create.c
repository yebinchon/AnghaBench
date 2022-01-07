
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int possible_crtcs; } ;
struct fsl_dcu_drm_device {int drm; scalar_t__ tcon; struct drm_encoder encoder; } ;
struct drm_crtc {int dummy; } ;


 int DRM_MODE_ENCODER_LVDS ;
 int drm_encoder_init (int ,struct drm_encoder*,int *,int ,int *) ;
 int encoder_funcs ;
 int fsl_tcon_bypass_enable (scalar_t__) ;

int fsl_dcu_drm_encoder_create(struct fsl_dcu_drm_device *fsl_dev,
          struct drm_crtc *crtc)
{
 struct drm_encoder *encoder = &fsl_dev->encoder;
 int ret;

 encoder->possible_crtcs = 1;


 if (fsl_dev->tcon)
  fsl_tcon_bypass_enable(fsl_dev->tcon);

 ret = drm_encoder_init(fsl_dev->drm, encoder, &encoder_funcs,
          DRM_MODE_ENCODER_LVDS, ((void*)0));
 if (ret < 0)
  return ret;

 return 0;
}
