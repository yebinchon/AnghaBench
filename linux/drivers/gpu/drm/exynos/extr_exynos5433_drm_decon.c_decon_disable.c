
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int out_type; int first_win; int dev; int * planes; int irq; int te_irq; } ;


 int I80_HW_TRG ;
 int WINDOWS_NR ;
 int decon_disable_plane (struct exynos_drm_crtc*,int *) ;
 int decon_swreset (struct decon_context*) ;
 int exynos_drm_pipe_clk_enable (struct exynos_drm_crtc*,int) ;
 int pm_runtime_put_sync (int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void decon_disable(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;
 int i;

 if (!(ctx->out_type & I80_HW_TRG))
  synchronize_irq(ctx->te_irq);
 synchronize_irq(ctx->irq);






 for (i = ctx->first_win; i < WINDOWS_NR; i++)
  decon_disable_plane(crtc, &ctx->planes[i]);

 decon_swreset(ctx);

 exynos_drm_pipe_clk_enable(crtc, 0);

 pm_runtime_put_sync(ctx->dev);
}
