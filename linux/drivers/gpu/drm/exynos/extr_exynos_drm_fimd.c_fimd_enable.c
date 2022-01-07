
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimd_context {int suspended; int crtc; int irq_flags; int dev; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;


 int fimd_commit (int ) ;
 int fimd_enable_vblank (int ) ;
 int pm_runtime_get_sync (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void fimd_enable(struct exynos_drm_crtc *crtc)
{
 struct fimd_context *ctx = crtc->ctx;

 if (!ctx->suspended)
  return;

 ctx->suspended = 0;

 pm_runtime_get_sync(ctx->dev);


 if (test_and_clear_bit(0, &ctx->irq_flags))
  fimd_enable_vblank(ctx->crtc);

 fimd_commit(ctx->crtc);
}
