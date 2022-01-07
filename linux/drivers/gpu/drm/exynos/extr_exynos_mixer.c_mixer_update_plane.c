
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int flags; int dev; } ;
struct exynos_drm_plane {int index; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int ) ;
 int MXR_BIT_POWERED ;
 int VP_DEFAULT_WIN ;
 int mixer_graph_buffer (struct mixer_context*,struct exynos_drm_plane*) ;
 int test_bit (int ,int *) ;
 int vp_video_buffer (struct mixer_context*,struct exynos_drm_plane*) ;

__attribute__((used)) static void mixer_update_plane(struct exynos_drm_crtc *crtc,
          struct exynos_drm_plane *plane)
{
 struct mixer_context *mixer_ctx = crtc->ctx;

 DRM_DEV_DEBUG_KMS(mixer_ctx->dev, "win: %d\n", plane->index);

 if (!test_bit(MXR_BIT_POWERED, &mixer_ctx->flags))
  return;

 if (plane->index == VP_DEFAULT_WIN)
  vp_video_buffer(mixer_ctx, plane);
 else
  mixer_graph_buffer(mixer_ctx, plane);
}
