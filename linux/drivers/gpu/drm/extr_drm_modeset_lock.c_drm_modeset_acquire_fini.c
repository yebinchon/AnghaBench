
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_acquire_ctx {int ww_ctx; } ;


 int ww_acquire_fini (int *) ;

void drm_modeset_acquire_fini(struct drm_modeset_acquire_ctx *ctx)
{
 ww_acquire_fini(&ctx->ww_ctx);
}
