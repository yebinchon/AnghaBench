
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct fimd_context {TYPE_4__* driver_data; struct exynos_drm_plane* planes; } ;
struct TYPE_7__ {unsigned int alpha; unsigned int pixel_blend_mode; } ;
struct exynos_drm_plane_state {TYPE_3__ base; } ;
struct TYPE_5__ {int state; } ;
struct exynos_drm_plane {TYPE_1__ base; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
struct TYPE_8__ {scalar_t__ has_limited_fmt; } ;
struct TYPE_6__ {int format; scalar_t__ has_alpha; } ;







 unsigned int DRM_MODE_BLEND_PIXEL_NONE ;
 int MIN_FB_WIDTH_FOR_16WORD_BURST ;
 int WINCON (unsigned int) ;
 int WINCON0_BPPMODE_16BPP_1555 ;
 int WINCON0_BPPMODE_16BPP_565 ;
 int WINCON0_BPPMODE_24BPP_888 ;
 int WINCON0_BPPMODE_8BPP_PALETTE ;
 int WINCON1_BPPMODE_25BPP_A1888 ;
 int WINCONx_BLEND_MODE_MASK ;
 int WINCONx_BURSTLEN_16WORD ;
 int WINCONx_BURSTLEN_4WORD ;
 int WINCONx_BURSTLEN_8WORD ;
 int WINCONx_BURSTLEN_MASK ;
 int WINCONx_BYTSWP ;
 int WINCONx_ENWIN ;
 int WINCONx_HAWSWP ;
 int WINCONx_WSWP ;
 int fimd_set_bits (struct fimd_context*,int ,int ,int ) ;
 int fimd_win_set_bldeq (struct fimd_context*,unsigned int,unsigned int,unsigned int) ;
 int fimd_win_set_bldmod (struct fimd_context*,unsigned int,unsigned int,unsigned int) ;
 struct exynos_drm_plane_state* to_exynos_plane_state (int ) ;

__attribute__((used)) static void fimd_win_set_pixfmt(struct fimd_context *ctx, unsigned int win,
    struct drm_framebuffer *fb, int width)
{
 struct exynos_drm_plane plane = ctx->planes[win];
 struct exynos_drm_plane_state *state =
  to_exynos_plane_state(plane.base.state);
 uint32_t pixel_format = fb->format->format;
 unsigned int alpha = state->base.alpha;
 u32 val = WINCONx_ENWIN;
 unsigned int pixel_alpha;

 if (fb->format->has_alpha)
  pixel_alpha = state->base.pixel_blend_mode;
 else
  pixel_alpha = DRM_MODE_BLEND_PIXEL_NONE;





 if (ctx->driver_data->has_limited_fmt && !win) {
  if (pixel_format == 132)
   pixel_format = 128;
 }

 switch (pixel_format) {
 case 131:
  val |= WINCON0_BPPMODE_8BPP_PALETTE;
  val |= WINCONx_BURSTLEN_8WORD;
  val |= WINCONx_BYTSWP;
  break;
 case 129:
  val |= WINCON0_BPPMODE_16BPP_1555;
  val |= WINCONx_HAWSWP;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 130:
  val |= WINCON0_BPPMODE_16BPP_565;
  val |= WINCONx_HAWSWP;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 128:
  val |= WINCON0_BPPMODE_24BPP_888;
  val |= WINCONx_WSWP;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 132:
 default:
  val |= WINCON1_BPPMODE_25BPP_A1888;
  val |= WINCONx_WSWP;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 }
 if (width < MIN_FB_WIDTH_FOR_16WORD_BURST) {
  val &= ~WINCONx_BURSTLEN_MASK;
  val |= WINCONx_BURSTLEN_4WORD;
 }
 fimd_set_bits(ctx, WINCON(win), ~WINCONx_BLEND_MODE_MASK, val);


 if (win != 0) {
  fimd_win_set_bldmod(ctx, win, alpha, pixel_alpha);
  fimd_win_set_bldeq(ctx, win, alpha, pixel_alpha);
 }
}
