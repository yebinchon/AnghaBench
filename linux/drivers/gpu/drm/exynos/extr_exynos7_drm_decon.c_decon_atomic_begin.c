
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {scalar_t__ suspended; } ;


 int WINDOWS_NR ;
 int decon_shadow_protect_win (struct decon_context*,int,int) ;

__attribute__((used)) static void decon_atomic_begin(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;
 int i;

 if (ctx->suspended)
  return;

 for (i = 0; i < WINDOWS_NR; i++)
  decon_shadow_protect_win(ctx, i, 1);
}
