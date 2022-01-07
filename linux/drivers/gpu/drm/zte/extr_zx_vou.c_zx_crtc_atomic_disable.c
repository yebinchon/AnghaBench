
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_vou_hw {scalar_t__ timing; } ;
struct zx_crtc_bits {int tc_enable; } ;
struct zx_crtc {scalar_t__ chnreg; int pixclk; struct zx_vou_hw* vou; struct zx_crtc_bits* bits; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 scalar_t__ CHN_CTRL0 ;
 int CHN_ENABLE ;
 scalar_t__ TIMING_TC_ENABLE ;
 int clk_disable_unprepare (int ) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 struct zx_crtc* to_zx_crtc (struct drm_crtc*) ;
 int zx_writel_mask (scalar_t__,int ,int ) ;

__attribute__((used)) static void zx_crtc_atomic_disable(struct drm_crtc *crtc,
       struct drm_crtc_state *old_state)
{
 struct zx_crtc *zcrtc = to_zx_crtc(crtc);
 const struct zx_crtc_bits *bits = zcrtc->bits;
 struct zx_vou_hw *vou = zcrtc->vou;

 clk_disable_unprepare(zcrtc->pixclk);

 drm_crtc_vblank_off(crtc);


 zx_writel_mask(zcrtc->chnreg + CHN_CTRL0, CHN_ENABLE, 0);


 zx_writel_mask(vou->timing + TIMING_TC_ENABLE, bits->tc_enable, 0);
}
