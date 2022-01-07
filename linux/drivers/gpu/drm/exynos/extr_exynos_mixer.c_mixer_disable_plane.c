
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int reg_slock; int flags; int dev; } ;
struct exynos_drm_plane {int index; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int ) ;
 int MXR_BIT_POWERED ;
 int mixer_cfg_layer (struct mixer_context*,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void mixer_disable_plane(struct exynos_drm_crtc *crtc,
    struct exynos_drm_plane *plane)
{
 struct mixer_context *mixer_ctx = crtc->ctx;
 unsigned long flags;

 DRM_DEV_DEBUG_KMS(mixer_ctx->dev, "win: %d\n", plane->index);

 if (!test_bit(MXR_BIT_POWERED, &mixer_ctx->flags))
  return;

 spin_lock_irqsave(&mixer_ctx->reg_slock, flags);
 mixer_cfg_layer(mixer_ctx, plane->index, 0, 0);
 spin_unlock_irqrestore(&mixer_ctx->reg_slock, flags);
}
