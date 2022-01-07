
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int * clks; } ;


 int ARRAY_SIZE (int ) ;
 int DECON_UPDATE ;
 int DECON_WINCONx (int) ;
 int STANDALONE_UPDATE_F ;
 int WINCONx_ENWIN_F ;
 int WINDOWS_NR ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int decon_clks_name ;
 int decon_set_bits (struct decon_context*,int ,int ,int ) ;
 int decon_shadow_protect (struct decon_context*,int) ;
 int msleep (int) ;

__attribute__((used)) static void decon_clear_channels(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;
 int win, i, ret;

 for (i = 0; i < ARRAY_SIZE(decon_clks_name); i++) {
  ret = clk_prepare_enable(ctx->clks[i]);
  if (ret < 0)
   goto err;
 }

 decon_shadow_protect(ctx, 1);
 for (win = 0; win < WINDOWS_NR; win++)
  decon_set_bits(ctx, DECON_WINCONx(win), WINCONx_ENWIN_F, 0);
 decon_shadow_protect(ctx, 0);

 decon_set_bits(ctx, DECON_UPDATE, STANDALONE_UPDATE_F, ~0);


 msleep(50);

err:
 while (--i >= 0)
  clk_disable_unprepare(ctx->clks[i]);
}
