
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vidi_context {int suspended; int lock; } ;
struct exynos_drm_crtc {int base; struct vidi_context* ctx; } ;


 int drm_crtc_vblank_on (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void vidi_enable(struct exynos_drm_crtc *crtc)
{
 struct vidi_context *ctx = crtc->ctx;

 mutex_lock(&ctx->lock);

 ctx->suspended = 0;

 mutex_unlock(&ctx->lock);

 drm_crtc_vblank_on(&crtc->base);
}
