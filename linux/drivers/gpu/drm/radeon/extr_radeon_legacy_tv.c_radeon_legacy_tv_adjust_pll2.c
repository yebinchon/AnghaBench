
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_tv_mode_constants {int hor_total; int crtcPLL_M; int crtcPLL_N; int crtcPLL_post_div; } ;
struct radeon_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int RADEON_PIX2CLK_SRC_SEL_MASK ;
 int RADEON_PIX2CLK_SRC_SEL_P2PLLCLK ;
 int RADEON_PIXCLK_TV_SRC_SEL ;
 int get_post_div (int ) ;
 struct radeon_tv_mode_constants* radeon_legacy_tv_get_std_mode (struct radeon_encoder*,int *) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void radeon_legacy_tv_adjust_pll2(struct drm_encoder *encoder,
      uint32_t *htotal2_cntl, uint32_t *p2pll_ref_div,
      uint32_t *p2pll_div_0, uint32_t *pixclks_cntl)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 const struct radeon_tv_mode_constants *const_ptr;

 const_ptr = radeon_legacy_tv_get_std_mode(radeon_encoder, ((void*)0));
 if (!const_ptr)
  return;

 *htotal2_cntl = (const_ptr->hor_total & 0x7);

 *p2pll_ref_div = const_ptr->crtcPLL_M;

 *p2pll_div_0 = (const_ptr->crtcPLL_N & 0x7ff) | (get_post_div(const_ptr->crtcPLL_post_div) << 16);
 *pixclks_cntl &= ~RADEON_PIX2CLK_SRC_SEL_MASK;
 *pixclks_cntl |= RADEON_PIX2CLK_SRC_SEL_P2PLLCLK | RADEON_PIXCLK_TV_SRC_SEL;
}
