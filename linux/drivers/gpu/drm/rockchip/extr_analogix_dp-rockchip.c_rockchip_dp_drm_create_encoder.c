
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int possible_crtcs; } ;
struct rockchip_dp_device {struct device* dev; struct drm_device* drm_dev; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;
struct device {int of_node; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_ENCODER_TMDS ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int drm_of_find_possible_crtcs (struct drm_device*,int ) ;
 int rockchip_dp_encoder_funcs ;
 int rockchip_dp_encoder_helper_funcs ;

__attribute__((used)) static int rockchip_dp_drm_create_encoder(struct rockchip_dp_device *dp)
{
 struct drm_encoder *encoder = &dp->encoder;
 struct drm_device *drm_dev = dp->drm_dev;
 struct device *dev = dp->dev;
 int ret;

 encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
            dev->of_node);
 DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);

 ret = drm_encoder_init(drm_dev, encoder, &rockchip_dp_encoder_funcs,
          DRM_MODE_ENCODER_TMDS, ((void*)0));
 if (ret) {
  DRM_ERROR("failed to initialize encoder with drm\n");
  return ret;
 }

 drm_encoder_helper_add(encoder, &rockchip_dp_encoder_helper_funcs);

 return 0;
}
