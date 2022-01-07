
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int flags; int dev; int * planes; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;


 int MIXER_WIN_NR ;
 int MXR_BIT_POWERED ;
 int clear_bit (int ,int *) ;
 int exynos_drm_pipe_clk_enable (struct exynos_drm_crtc*,int) ;
 int mixer_disable_plane (struct exynos_drm_crtc*,int *) ;
 int mixer_regs_dump (struct mixer_context*) ;
 int mixer_stop (struct mixer_context*) ;
 int pm_runtime_put (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void mixer_disable(struct exynos_drm_crtc *crtc)
{
 struct mixer_context *ctx = crtc->ctx;
 int i;

 if (!test_bit(MXR_BIT_POWERED, &ctx->flags))
  return;

 mixer_stop(ctx);
 mixer_regs_dump(ctx);

 for (i = 0; i < MIXER_WIN_NR; i++)
  mixer_disable_plane(crtc, &ctx->planes[i]);

 exynos_drm_pipe_clk_enable(crtc, 0);

 pm_runtime_put(ctx->dev);

 clear_bit(MXR_BIT_POWERED, &ctx->flags);
}
