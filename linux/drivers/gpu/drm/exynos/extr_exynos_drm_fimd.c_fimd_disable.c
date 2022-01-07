
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimd_context {int suspended; int dev; scalar_t__ regs; int * planes; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;


 scalar_t__ VIDCON0 ;
 int WINDOWS_NR ;
 int fimd_disable_plane (struct exynos_drm_crtc*,int *) ;
 int fimd_disable_vblank (struct exynos_drm_crtc*) ;
 int fimd_enable_vblank (struct exynos_drm_crtc*) ;
 int fimd_wait_for_vblank (struct exynos_drm_crtc*) ;
 int pm_runtime_put_sync (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void fimd_disable(struct exynos_drm_crtc *crtc)
{
 struct fimd_context *ctx = crtc->ctx;
 int i;

 if (ctx->suspended)
  return;






 for (i = 0; i < WINDOWS_NR; i++)
  fimd_disable_plane(crtc, &ctx->planes[i]);

 fimd_enable_vblank(crtc);
 fimd_wait_for_vblank(crtc);
 fimd_disable_vblank(crtc);

 writel(0, ctx->regs + VIDCON0);

 pm_runtime_put_sync(ctx->dev);
 ctx->suspended = 1;
}
