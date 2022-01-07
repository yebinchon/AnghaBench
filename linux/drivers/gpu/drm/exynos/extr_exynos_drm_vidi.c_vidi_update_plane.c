
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vidi_context {int dev; scalar_t__ suspended; } ;
struct TYPE_2__ {struct drm_plane_state* state; } ;
struct exynos_drm_plane {TYPE_1__ base; } ;
struct exynos_drm_crtc {struct vidi_context* ctx; } ;
struct drm_plane_state {int fb; } ;
typedef int dma_addr_t ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int *) ;
 int exynos_drm_fb_dma_addr (int ,int ) ;

__attribute__((used)) static void vidi_update_plane(struct exynos_drm_crtc *crtc,
         struct exynos_drm_plane *plane)
{
 struct drm_plane_state *state = plane->base.state;
 struct vidi_context *ctx = crtc->ctx;
 dma_addr_t addr;

 if (ctx->suspended)
  return;

 addr = exynos_drm_fb_dma_addr(state->fb, 0);
 DRM_DEV_DEBUG_KMS(ctx->dev, "dma_addr = %pad\n", &addr);
}
