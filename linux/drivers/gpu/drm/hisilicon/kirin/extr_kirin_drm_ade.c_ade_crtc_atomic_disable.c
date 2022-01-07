
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kirin_crtc {int enable; struct ade_hw_ctx* hw_ctx; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct ade_hw_ctx {int dummy; } ;


 int ade_power_down (struct ade_hw_ctx*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 struct kirin_crtc* to_kirin_crtc (struct drm_crtc*) ;

__attribute__((used)) static void ade_crtc_atomic_disable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct kirin_crtc *kcrtc = to_kirin_crtc(crtc);
 struct ade_hw_ctx *ctx = kcrtc->hw_ctx;

 if (!kcrtc->enable)
  return;

 drm_crtc_vblank_off(crtc);
 ade_power_down(ctx);
 kcrtc->enable = 0;
}
