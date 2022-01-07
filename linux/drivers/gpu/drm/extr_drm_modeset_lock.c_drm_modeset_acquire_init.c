
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_modeset_acquire_ctx {int interruptible; int locked; int ww_ctx; } ;


 int DRM_MODESET_ACQUIRE_INTERRUPTIBLE ;
 int INIT_LIST_HEAD (int *) ;
 int crtc_ww_class ;
 int memset (struct drm_modeset_acquire_ctx*,int ,int) ;
 int ww_acquire_init (int *,int *) ;

void drm_modeset_acquire_init(struct drm_modeset_acquire_ctx *ctx,
  uint32_t flags)
{
 memset(ctx, 0, sizeof(*ctx));
 ww_acquire_init(&ctx->ww_ctx, &crtc_ww_class);
 INIT_LIST_HEAD(&ctx->locked);

 if (flags & DRM_MODESET_ACQUIRE_INTERRUPTIBLE)
  ctx->interruptible = 1;
}
