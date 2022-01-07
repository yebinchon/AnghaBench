
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int crtc; scalar_t__ regs; } ;


 scalar_t__ WINCON (unsigned int) ;
 int WINCONx_ENWIN ;
 unsigned int WINDOWS_NR ;
 int decon_wait_for_vblank (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void decon_clear_channels(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;
 unsigned int win, ch_enabled = 0;


 for (win = 0; win < WINDOWS_NR; win++) {
  u32 val = readl(ctx->regs + WINCON(win));

  if (val & WINCONx_ENWIN) {
   val &= ~WINCONx_ENWIN;
   writel(val, ctx->regs + WINCON(win));
   ch_enabled = 1;
  }
 }


 if (ch_enabled)
  decon_wait_for_vblank(ctx->crtc);
}
