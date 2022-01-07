
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int dev; int drm_dev; } ;


 int exynos_drm_unregister_dma (int ,int ) ;

__attribute__((used)) static void mixer_ctx_remove(struct mixer_context *mixer_ctx)
{
 exynos_drm_unregister_dma(mixer_ctx->drm_dev, mixer_ctx->dev);
}
