
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int flags; int dev; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;


 int MXR_BIT_POWERED ;
 int MXR_BIT_VSYNC ;
 int MXR_INT_CLEAR_VSYNC ;
 int MXR_INT_EN ;
 int MXR_INT_EN_VSYNC ;
 int MXR_INT_STATUS ;
 int MXR_STATUS ;
 int MXR_STATUS_SOFT_RESET ;
 int exynos_drm_pipe_clk_enable (struct exynos_drm_crtc*,int) ;
 int mixer_commit (struct mixer_context*) ;
 int mixer_disable_sync (struct mixer_context*) ;
 int mixer_enable_sync (struct mixer_context*) ;
 int mixer_reg_writemask (struct mixer_context*,int ,int ,int ) ;
 int mixer_win_reset (struct mixer_context*) ;
 int pm_runtime_get_sync (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void mixer_enable(struct exynos_drm_crtc *crtc)
{
 struct mixer_context *ctx = crtc->ctx;

 if (test_bit(MXR_BIT_POWERED, &ctx->flags))
  return;

 pm_runtime_get_sync(ctx->dev);

 exynos_drm_pipe_clk_enable(crtc, 1);

 mixer_disable_sync(ctx);

 mixer_reg_writemask(ctx, MXR_STATUS, ~0, MXR_STATUS_SOFT_RESET);

 if (test_bit(MXR_BIT_VSYNC, &ctx->flags)) {
  mixer_reg_writemask(ctx, MXR_INT_STATUS, ~0,
     MXR_INT_CLEAR_VSYNC);
  mixer_reg_writemask(ctx, MXR_INT_EN, ~0, MXR_INT_EN_VSYNC);
 }
 mixer_win_reset(ctx);

 mixer_commit(ctx);

 mixer_enable_sync(ctx);

 set_bit(MXR_BIT_POWERED, &ctx->flags);
}
