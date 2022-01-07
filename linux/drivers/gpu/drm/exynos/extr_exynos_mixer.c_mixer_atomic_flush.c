
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int flags; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;


 int MXR_BIT_POWERED ;
 int exynos_crtc_handle_event (struct exynos_drm_crtc*) ;
 int mixer_enable_sync (struct mixer_context*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void mixer_atomic_flush(struct exynos_drm_crtc *crtc)
{
 struct mixer_context *mixer_ctx = crtc->ctx;

 if (!test_bit(MXR_BIT_POWERED, &mixer_ctx->flags))
  return;

 mixer_enable_sync(mixer_ctx);
 exynos_crtc_handle_event(crtc);
}
