
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fimd_context {int suspended; int dev; int bus_clk; int lcd_clk; int crtc; TYPE_1__* driver_data; scalar_t__ regs; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;
struct TYPE_2__ {scalar_t__ has_shadowcon; } ;


 scalar_t__ WINCON (unsigned int) ;
 int WINCONx_ENWIN ;
 unsigned int WINDOWS_NR ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int fimd_disable_vblank (int ) ;
 int fimd_enable_shadow_channel_path (struct fimd_context*,unsigned int,int) ;
 int fimd_enable_vblank (int ) ;
 int fimd_enable_video_output (struct fimd_context*,unsigned int,int) ;
 int fimd_wait_for_vblank (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void fimd_clear_channels(struct exynos_drm_crtc *crtc)
{
 struct fimd_context *ctx = crtc->ctx;
 unsigned int win, ch_enabled = 0;


 pm_runtime_get_sync(ctx->dev);

 clk_prepare_enable(ctx->bus_clk);
 clk_prepare_enable(ctx->lcd_clk);


 for (win = 0; win < WINDOWS_NR; win++) {
  u32 val = readl(ctx->regs + WINCON(win));

  if (val & WINCONx_ENWIN) {
   fimd_enable_video_output(ctx, win, 0);

   if (ctx->driver_data->has_shadowcon)
    fimd_enable_shadow_channel_path(ctx, win,
        0);

   ch_enabled = 1;
  }
 }


 if (ch_enabled) {
  ctx->suspended = 0;

  fimd_enable_vblank(ctx->crtc);
  fimd_wait_for_vblank(ctx->crtc);
  fimd_disable_vblank(ctx->crtc);

  ctx->suspended = 1;
 }

 clk_disable_unprepare(ctx->lcd_clk);
 clk_disable_unprepare(ctx->bus_clk);

 pm_runtime_put(ctx->dev);
}
