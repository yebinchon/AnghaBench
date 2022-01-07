
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimd_context {TYPE_1__* driver_data; scalar_t__ suspended; } ;
struct exynos_drm_plane {unsigned int index; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;
struct TYPE_2__ {scalar_t__ has_shadowcon; } ;


 int fimd_enable_shadow_channel_path (struct fimd_context*,unsigned int,int) ;
 int fimd_enable_video_output (struct fimd_context*,unsigned int,int) ;

__attribute__((used)) static void fimd_disable_plane(struct exynos_drm_crtc *crtc,
          struct exynos_drm_plane *plane)
{
 struct fimd_context *ctx = crtc->ctx;
 unsigned int win = plane->index;

 if (ctx->suspended)
  return;

 fimd_enable_video_output(ctx, win, 0);

 if (ctx->driver_data->has_shadowcon)
  fimd_enable_shadow_channel_path(ctx, win, 0);
}
