
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimd_context {scalar_t__ suspended; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;


 int WINDOWS_NR ;
 int fimd_shadow_protect_win (struct fimd_context*,int,int) ;

__attribute__((used)) static void fimd_atomic_begin(struct exynos_drm_crtc *crtc)
{
 struct fimd_context *ctx = crtc->ctx;
 int i;

 if (ctx->suspended)
  return;

 for (i = 0; i < WINDOWS_NR; i++)
  fimd_shadow_protect_win(ctx, i, 1);
}
