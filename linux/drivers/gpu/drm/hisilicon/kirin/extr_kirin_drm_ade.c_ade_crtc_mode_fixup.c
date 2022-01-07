
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kirin_crtc {struct ade_hw_ctx* hw_ctx; } ;
struct drm_display_mode {int clock; } ;
struct drm_crtc {int dummy; } ;
struct ade_hw_ctx {int ade_pix_clk; } ;


 int clk_round_rate (int ,int) ;
 struct kirin_crtc* to_kirin_crtc (struct drm_crtc*) ;

__attribute__((used)) static bool ade_crtc_mode_fixup(struct drm_crtc *crtc,
    const struct drm_display_mode *mode,
    struct drm_display_mode *adjusted_mode)
{
 struct kirin_crtc *kcrtc = to_kirin_crtc(crtc);
 struct ade_hw_ctx *ctx = kcrtc->hw_ctx;

 adjusted_mode->clock =
  clk_round_rate(ctx->ade_pix_clk, mode->clock * 1000) / 1000;
 return 1;
}
