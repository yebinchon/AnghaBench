
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int vblank_lock; int frame_id; } ;


 int DECON_UPDATE ;
 int STANDALONE_UPDATE_F ;
 int decon_get_frame_count (struct decon_context*,int) ;
 int decon_set_bits (struct decon_context*,int ,int ,int ) ;
 int decon_shadow_protect (struct decon_context*,int) ;
 int exynos_crtc_handle_event (struct exynos_drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void decon_atomic_flush(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;
 unsigned long flags;

 spin_lock_irqsave(&ctx->vblank_lock, flags);

 decon_shadow_protect(ctx, 0);

 decon_set_bits(ctx, DECON_UPDATE, STANDALONE_UPDATE_F, ~0);

 ctx->frame_id = decon_get_frame_count(ctx, 1);

 exynos_crtc_handle_event(crtc);

 spin_unlock_irqrestore(&ctx->vblank_lock, flags);
}
