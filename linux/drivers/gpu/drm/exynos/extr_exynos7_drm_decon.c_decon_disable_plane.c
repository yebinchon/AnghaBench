
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_drm_plane {unsigned int index; } ;
struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {scalar_t__ regs; scalar_t__ suspended; } ;


 scalar_t__ DECON_UPDATE ;
 int DECON_UPDATE_STANDALONE_F ;
 scalar_t__ WINCON (unsigned int) ;
 int WINCONx_ENWIN ;
 int decon_shadow_protect_win (struct decon_context*,unsigned int,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void decon_disable_plane(struct exynos_drm_crtc *crtc,
    struct exynos_drm_plane *plane)
{
 struct decon_context *ctx = crtc->ctx;
 unsigned int win = plane->index;
 u32 val;

 if (ctx->suspended)
  return;


 decon_shadow_protect_win(ctx, win, 1);


 val = readl(ctx->regs + WINCON(win));
 val &= ~WINCONx_ENWIN;
 writel(val, ctx->regs + WINCON(win));

 val = readl(ctx->regs + DECON_UPDATE);
 val |= DECON_UPDATE_STANDALONE_F;
 writel(val, ctx->regs + DECON_UPDATE);
}
