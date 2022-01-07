
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int crtc; int dev; } ;


 int decon_commit (int ) ;
 int decon_swreset (struct decon_context*) ;
 int exynos_drm_pipe_clk_enable (struct exynos_drm_crtc*,int) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static void decon_enable(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;

 pm_runtime_get_sync(ctx->dev);

 exynos_drm_pipe_clk_enable(crtc, 1);

 decon_swreset(ctx);

 decon_commit(ctx->crtc);
}
