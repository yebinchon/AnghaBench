
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kirin_crtc {struct ade_hw_ctx* hw_ctx; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct ade_hw_ctx {int power_on; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; struct drm_display_mode mode; } ;


 int ade_ldi_set_mode (struct ade_hw_ctx*,struct drm_display_mode*,struct drm_display_mode*) ;
 int ade_power_up (struct ade_hw_ctx*) ;
 struct kirin_crtc* to_kirin_crtc (struct drm_crtc*) ;

__attribute__((used)) static void ade_crtc_atomic_begin(struct drm_crtc *crtc,
      struct drm_crtc_state *old_state)
{
 struct kirin_crtc *kcrtc = to_kirin_crtc(crtc);
 struct ade_hw_ctx *ctx = kcrtc->hw_ctx;
 struct drm_display_mode *mode = &crtc->state->mode;
 struct drm_display_mode *adj_mode = &crtc->state->adjusted_mode;

 if (!ctx->power_on)
  (void)ade_power_up(ctx);
 ade_ldi_set_mode(ctx, mode, adj_mode);
}
