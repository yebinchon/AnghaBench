
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop {int dclk; } ;
struct drm_display_mode {int clock; } ;
struct drm_crtc {int dummy; } ;


 int DIV_ROUND_UP (int ,int) ;
 int clk_round_rate (int ,int) ;
 struct vop* to_vop (struct drm_crtc*) ;

__attribute__((used)) static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
    const struct drm_display_mode *mode,
    struct drm_display_mode *adjusted_mode)
{
 struct vop *vop = to_vop(crtc);

 adjusted_mode->clock =
  DIV_ROUND_UP(clk_round_rate(vop->dclk,
         adjusted_mode->clock * 1000), 1000);

 return 1;
}
