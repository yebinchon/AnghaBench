
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decon_context {int dev; int drm_dev; } ;


 int exynos_drm_unregister_dma (int ,int ) ;

__attribute__((used)) static void decon_ctx_remove(struct decon_context *ctx)
{

 exynos_drm_unregister_dma(ctx->drm_dev, ctx->dev);
}
