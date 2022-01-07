
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int dev; int wait_vsync_event; int wait_vsync_queue; scalar_t__ suspended; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*) ;
 int HZ ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static void decon_wait_for_vblank(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;

 if (ctx->suspended)
  return;

 atomic_set(&ctx->wait_vsync_event, 1);





 if (!wait_event_timeout(ctx->wait_vsync_queue,
    !atomic_read(&ctx->wait_vsync_event),
    HZ/20))
  DRM_DEV_DEBUG_KMS(ctx->dev, "vblank wait timed out.\n");
}
