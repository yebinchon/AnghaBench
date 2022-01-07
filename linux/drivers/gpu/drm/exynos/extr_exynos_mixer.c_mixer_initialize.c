
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int dev; int flags; struct drm_device* drm_dev; } ;
struct drm_device {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int MXR_BIT_VP_ENABLED ;
 int exynos_drm_register_dma (struct drm_device*,int ) ;
 int mixer_resources_init (struct mixer_context*) ;
 scalar_t__ test_bit (int ,int *) ;
 int vp_resources_init (struct mixer_context*) ;

__attribute__((used)) static int mixer_initialize(struct mixer_context *mixer_ctx,
   struct drm_device *drm_dev)
{
 int ret;

 mixer_ctx->drm_dev = drm_dev;


 ret = mixer_resources_init(mixer_ctx);
 if (ret) {
  DRM_DEV_ERROR(mixer_ctx->dev,
         "mixer_resources_init failed ret=%d\n", ret);
  return ret;
 }

 if (test_bit(MXR_BIT_VP_ENABLED, &mixer_ctx->flags)) {

  ret = vp_resources_init(mixer_ctx);
  if (ret) {
   DRM_DEV_ERROR(mixer_ctx->dev,
          "vp_resources_init failed ret=%d\n", ret);
   return ret;
  }
 }

 return exynos_drm_register_dma(drm_dev, mixer_ctx->dev);
}
