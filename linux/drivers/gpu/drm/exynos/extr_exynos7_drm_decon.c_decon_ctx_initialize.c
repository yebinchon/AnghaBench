
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct decon_context {int dev; int crtc; struct drm_device* drm_dev; } ;


 int decon_clear_channels (int ) ;
 int exynos_drm_register_dma (struct drm_device*,int ) ;

__attribute__((used)) static int decon_ctx_initialize(struct decon_context *ctx,
   struct drm_device *drm_dev)
{
 ctx->drm_dev = drm_dev;

 decon_clear_channels(ctx->crtc);

 return exynos_drm_register_dma(drm_dev, ctx->dev);
}
