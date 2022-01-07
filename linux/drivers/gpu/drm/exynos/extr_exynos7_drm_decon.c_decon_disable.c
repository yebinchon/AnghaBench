
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int suspended; int dev; int * planes; } ;


 int WINDOWS_NR ;
 int decon_disable_plane (struct exynos_drm_crtc*,int *) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void decon_disable(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;
 int i;

 if (ctx->suspended)
  return;






 for (i = 0; i < WINDOWS_NR; i++)
  decon_disable_plane(crtc, &ctx->planes[i]);

 pm_runtime_put_sync(ctx->dev);

 ctx->suspended = 1;
}
