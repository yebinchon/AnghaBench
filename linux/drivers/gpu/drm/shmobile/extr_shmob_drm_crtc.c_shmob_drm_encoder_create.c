
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int possible_crtcs; } ;
struct TYPE_2__ {int dpms; struct drm_encoder encoder; } ;
struct shmob_drm_device {int ddev; TYPE_1__ encoder; } ;


 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_ENCODER_LVDS ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (int ,struct drm_encoder*,int *,int ,int *) ;
 int encoder_funcs ;
 int encoder_helper_funcs ;

int shmob_drm_encoder_create(struct shmob_drm_device *sdev)
{
 struct drm_encoder *encoder = &sdev->encoder.encoder;
 int ret;

 sdev->encoder.dpms = DRM_MODE_DPMS_OFF;

 encoder->possible_crtcs = 1;

 ret = drm_encoder_init(sdev->ddev, encoder, &encoder_funcs,
          DRM_MODE_ENCODER_LVDS, ((void*)0));
 if (ret < 0)
  return ret;

 drm_encoder_helper_add(encoder, &encoder_helper_funcs);

 return 0;
}
