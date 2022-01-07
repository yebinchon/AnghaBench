
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int suspended; int crtc; int irq_flags; int dev; } ;


 int decon_commit (int ) ;
 int decon_enable_vblank (int ) ;
 int decon_init (struct decon_context*) ;
 int pm_runtime_get_sync (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void decon_enable(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;

 if (!ctx->suspended)
  return;

 pm_runtime_get_sync(ctx->dev);

 decon_init(ctx);


 if (test_and_clear_bit(0, &ctx->irq_flags))
  decon_enable_vblank(ctx->crtc);

 decon_commit(ctx->crtc);

 ctx->suspended = 0;
}
