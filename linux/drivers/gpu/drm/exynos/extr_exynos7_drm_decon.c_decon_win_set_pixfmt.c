
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {int* pitches; int width; TYPE_1__* format; } ;
struct decon_context {scalar_t__ regs; int dev; } ;
struct TYPE_2__ {int format; int* cpp; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int MIN_FB_WIDTH_FOR_16WORD_BURST ;
 scalar_t__ WINCON (unsigned int) ;
 unsigned long WINCONx_ALPHA_SEL ;
 unsigned long WINCONx_BLD_PIX ;
 unsigned long WINCONx_BPPMODE_16BPP_565 ;
 unsigned long WINCONx_BPPMODE_24BPP_BGRx ;
 unsigned long WINCONx_BPPMODE_24BPP_RGBx ;
 unsigned long WINCONx_BPPMODE_24BPP_xBGR ;
 unsigned long WINCONx_BPPMODE_24BPP_xRGB ;
 unsigned long WINCONx_BPPMODE_32BPP_ABGR ;
 unsigned long WINCONx_BPPMODE_32BPP_ARGB ;
 unsigned long WINCONx_BPPMODE_32BPP_BGRA ;
 unsigned long WINCONx_BPPMODE_32BPP_RGBA ;
 unsigned long WINCONx_BPPMODE_MASK ;
 unsigned long WINCONx_BURSTLEN_16WORD ;
 unsigned long WINCONx_BURSTLEN_8WORD ;
 unsigned long WINCONx_BURSTLEN_MASK ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void decon_win_set_pixfmt(struct decon_context *ctx, unsigned int win,
     struct drm_framebuffer *fb)
{
 unsigned long val;
 int padding;

 val = readl(ctx->regs + WINCON(win));
 val &= ~WINCONx_BPPMODE_MASK;

 switch (fb->format->format) {
 case 132:
  val |= WINCONx_BPPMODE_16BPP_565;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 128:
  val |= WINCONx_BPPMODE_24BPP_xRGB;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 129:
  val |= WINCONx_BPPMODE_24BPP_xBGR;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 130:
  val |= WINCONx_BPPMODE_24BPP_RGBx;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 133:
  val |= WINCONx_BPPMODE_24BPP_BGRx;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 135:
  val |= WINCONx_BPPMODE_32BPP_ARGB | WINCONx_BLD_PIX |
   WINCONx_ALPHA_SEL;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 136:
  val |= WINCONx_BPPMODE_32BPP_ABGR | WINCONx_BLD_PIX |
   WINCONx_ALPHA_SEL;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 131:
  val |= WINCONx_BPPMODE_32BPP_RGBA | WINCONx_BLD_PIX |
   WINCONx_ALPHA_SEL;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 case 134:
 default:
  val |= WINCONx_BPPMODE_32BPP_BGRA | WINCONx_BLD_PIX |
   WINCONx_ALPHA_SEL;
  val |= WINCONx_BURSTLEN_16WORD;
  break;
 }

 DRM_DEV_DEBUG_KMS(ctx->dev, "cpp = %d\n", fb->format->cpp[0]);
 padding = (fb->pitches[0] / fb->format->cpp[0]) - fb->width;
 if (fb->width + padding < MIN_FB_WIDTH_FOR_16WORD_BURST) {
  val &= ~WINCONx_BURSTLEN_MASK;
  val |= WINCONx_BURSTLEN_8WORD;
 }

 writel(val, ctx->regs + WINCON(win));
}
