
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kirin_crtc {int enable; struct ade_hw_ctx* hw_ctx; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct ade_hw_ctx {int base; int power_on; } ;


 int ade_display_enable (struct ade_hw_ctx*) ;
 int ade_dump_regs (int ) ;
 int ade_power_up (struct ade_hw_ctx*) ;
 int ade_set_medianoc_qos (struct ade_hw_ctx*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 struct kirin_crtc* to_kirin_crtc (struct drm_crtc*) ;

__attribute__((used)) static void ade_crtc_atomic_enable(struct drm_crtc *crtc,
       struct drm_crtc_state *old_state)
{
 struct kirin_crtc *kcrtc = to_kirin_crtc(crtc);
 struct ade_hw_ctx *ctx = kcrtc->hw_ctx;
 int ret;

 if (kcrtc->enable)
  return;

 if (!ctx->power_on) {
  ret = ade_power_up(ctx);
  if (ret)
   return;
 }

 ade_set_medianoc_qos(ctx);
 ade_display_enable(ctx);
 ade_dump_regs(ctx->base);
 drm_crtc_vblank_on(crtc);
 kcrtc->enable = 1;
}
