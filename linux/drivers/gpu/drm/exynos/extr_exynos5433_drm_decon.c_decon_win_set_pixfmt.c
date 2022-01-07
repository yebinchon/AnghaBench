
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int alpha; unsigned int pixel_blend_mode; } ;
struct exynos_drm_plane_state {TYPE_2__ base; } ;
struct TYPE_4__ {int state; } ;
struct exynos_drm_plane {TYPE_1__ base; } ;
struct drm_framebuffer {scalar_t__ width; TYPE_3__* format; } ;
struct decon_context {int dev; scalar_t__ addr; struct exynos_drm_plane* planes; } ;
struct TYPE_6__ {int format; int * cpp; scalar_t__ has_alpha; } ;


 scalar_t__ DECON_WINCONx (unsigned int) ;
 int DRM_DEV_DEBUG_KMS (int ,char*,int ) ;




 unsigned int DRM_MODE_BLEND_PIXEL_NONE ;
 scalar_t__ MIN_FB_WIDTH_FOR_16WORD_BURST ;
 int WINCONx_BLEND_MODE_MASK ;
 unsigned long WINCONx_BPPMODE_16BPP_565 ;
 unsigned long WINCONx_BPPMODE_16BPP_I1555 ;
 unsigned long WINCONx_BPPMODE_24BPP_888 ;
 unsigned long WINCONx_BPPMODE_32BPP_A8888 ;
 unsigned long WINCONx_BURSTLEN_16WORD ;
 unsigned long WINCONx_BURSTLEN_8WORD ;
 unsigned long WINCONx_BURSTLEN_MASK ;
 unsigned long WINCONx_ENWIN_F ;
 unsigned long WINCONx_HAWSWP_F ;
 unsigned long WINCONx_WSWP_F ;
 int decon_set_bits (struct decon_context*,scalar_t__,int ,unsigned long) ;
 int decon_win_set_bldeq (struct decon_context*,unsigned int,unsigned int,unsigned int) ;
 int decon_win_set_bldmod (struct decon_context*,unsigned int,unsigned int,unsigned int) ;
 unsigned long readl (scalar_t__) ;
 struct exynos_drm_plane_state* to_exynos_plane_state (int ) ;

__attribute__((used)) static void decon_win_set_pixfmt(struct decon_context *ctx, unsigned int win,
     struct drm_framebuffer *fb)
{
 struct exynos_drm_plane plane = ctx->planes[win];
 struct exynos_drm_plane_state *state =
  to_exynos_plane_state(plane.base.state);
 unsigned int alpha = state->base.alpha;
 unsigned int pixel_alpha;
 unsigned long val;

 if (fb->format->has_alpha)
  pixel_alpha = state->base.pixel_blend_mode;
 else
  pixel_alpha = DRM_MODE_BLEND_PIXEL_NONE;

 val = readl(ctx->addr + DECON_WINCONx(win));
 val &= WINCONx_ENWIN_F;

 switch (fb->format->format) {
 case 129:
  val |= WINCONx_BPPMODE_16BPP_I1555;
  val |= WINCONx_HAWSWP_F;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 130:
  val |= WINCONx_BPPMODE_16BPP_565;
  val |= WINCONx_HAWSWP_F;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 128:
  val |= WINCONx_BPPMODE_24BPP_888;
  val |= WINCONx_WSWP_F;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 131:
 default:
  val |= WINCONx_BPPMODE_32BPP_A8888;
  val |= WINCONx_WSWP_F;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 }

 DRM_DEV_DEBUG_KMS(ctx->dev, "cpp = %u\n", fb->format->cpp[0]);
 if (fb->width < MIN_FB_WIDTH_FOR_16WORD_BURST) {
  val &= ~WINCONx_BURSTLEN_MASK;
  val |= WINCONx_BURSTLEN_8WORD;
 }
 decon_set_bits(ctx, DECON_WINCONx(win), ~WINCONx_BLEND_MODE_MASK, val);

 if (win > 0) {
  decon_win_set_bldmod(ctx, win, alpha, pixel_alpha);
  decon_win_set_bldeq(ctx, win, alpha, pixel_alpha);
 }
}
