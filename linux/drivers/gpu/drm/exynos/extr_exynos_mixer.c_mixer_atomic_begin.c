
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int dev; int flags; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;


 int MXR_BIT_POWERED ;
 int dev_err (int ,char*) ;
 int mixer_disable_sync (struct mixer_context*) ;
 scalar_t__ mixer_wait_for_sync (struct mixer_context*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void mixer_atomic_begin(struct exynos_drm_crtc *crtc)
{
 struct mixer_context *ctx = crtc->ctx;

 if (!test_bit(MXR_BIT_POWERED, &ctx->flags))
  return;

 if (mixer_wait_for_sync(ctx))
  dev_err(ctx->dev, "timeout waiting for VSYNC\n");
 mixer_disable_sync(ctx);
}
