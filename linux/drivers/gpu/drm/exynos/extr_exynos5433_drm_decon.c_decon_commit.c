
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_display_mode {int crtc_vsync_start; int crtc_vdisplay; int crtc_vsync_end; int flags; int vdisplay; int crtc_vtotal; scalar_t__ crtc_hsync_start; scalar_t__ crtc_hsync_end; scalar_t__ crtc_hdisplay; scalar_t__ crtc_htotal; scalar_t__ hdisplay; } ;
struct TYPE_2__ {struct drm_display_mode mode; } ;
struct exynos_drm_crtc {scalar_t__ i80_mode; TYPE_1__ base; struct decon_context* ctx; } ;
struct decon_context {int out_type; scalar_t__ addr; } ;


 int DECON_UPDATE ;
 int DECON_VIDCON0 ;
 scalar_t__ DECON_VIDOUTCON0 ;
 scalar_t__ DECON_VIDTCON00 ;
 scalar_t__ DECON_VIDTCON01 ;
 scalar_t__ DECON_VIDTCON10 ;
 scalar_t__ DECON_VIDTCON11 ;
 scalar_t__ DECON_VIDTCON2 ;
 int DRM_MODE_FLAG_INTERLACE ;
 int IFTYPE_HDMI ;
 int STANDALONE_UPDATE_F ;
 int VIDCON0_ENVID ;
 int VIDCON0_ENVID_F ;
 int VIDOUT_COMMAND_IF ;
 int VIDOUT_INTERLACE_EN_F ;
 int VIDOUT_LCD_ON ;
 int VIDOUT_RGB_IF ;
 int VIDTCON00_VBPD_F (int) ;
 int VIDTCON00_VFPD_F (int) ;
 int VIDTCON01_VSPW_F (int) ;
 int VIDTCON10_HBPD_F (scalar_t__) ;
 int VIDTCON10_HFPD_F (scalar_t__) ;
 int VIDTCON11_HSPW_F (scalar_t__) ;
 int VIDTCON2_HOZVAL (scalar_t__) ;
 int VIDTCON2_LINEVAL (int) ;
 int decon_set_bits (struct decon_context*,int ,int,int ) ;
 int decon_setup_trigger (struct decon_context*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void decon_commit(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;
 struct drm_display_mode *m = &crtc->base.mode;
 bool interlaced = 0;
 u32 val;

 if (ctx->out_type & IFTYPE_HDMI) {
  m->crtc_hsync_start = m->crtc_hdisplay + 10;
  m->crtc_hsync_end = m->crtc_htotal - 92;
  m->crtc_vsync_start = m->crtc_vdisplay + 1;
  m->crtc_vsync_end = m->crtc_vsync_start + 1;
  if (m->flags & DRM_MODE_FLAG_INTERLACE)
   interlaced = 1;
 }

 decon_setup_trigger(ctx);


 val = VIDOUT_LCD_ON;
 if (interlaced)
  val |= VIDOUT_INTERLACE_EN_F;
 if (crtc->i80_mode) {
  val |= VIDOUT_COMMAND_IF;
 } else {
  val |= VIDOUT_RGB_IF;
 }

 writel(val, ctx->addr + DECON_VIDOUTCON0);

 if (interlaced)
  val = VIDTCON2_LINEVAL(m->vdisplay / 2 - 1) |
   VIDTCON2_HOZVAL(m->hdisplay - 1);
 else
  val = VIDTCON2_LINEVAL(m->vdisplay - 1) |
   VIDTCON2_HOZVAL(m->hdisplay - 1);
 writel(val, ctx->addr + DECON_VIDTCON2);

 if (!crtc->i80_mode) {
  int vbp = m->crtc_vtotal - m->crtc_vsync_end;
  int vfp = m->crtc_vsync_start - m->crtc_vdisplay;

  if (interlaced)
   vbp = vbp / 2 - 1;
  val = VIDTCON00_VBPD_F(vbp - 1) | VIDTCON00_VFPD_F(vfp - 1);
  writel(val, ctx->addr + DECON_VIDTCON00);

  val = VIDTCON01_VSPW_F(
    m->crtc_vsync_end - m->crtc_vsync_start - 1);
  writel(val, ctx->addr + DECON_VIDTCON01);

  val = VIDTCON10_HBPD_F(
    m->crtc_htotal - m->crtc_hsync_end - 1) |
   VIDTCON10_HFPD_F(
    m->crtc_hsync_start - m->crtc_hdisplay - 1);
  writel(val, ctx->addr + DECON_VIDTCON10);

  val = VIDTCON11_HSPW_F(
    m->crtc_hsync_end - m->crtc_hsync_start - 1);
  writel(val, ctx->addr + DECON_VIDTCON11);
 }


 decon_set_bits(ctx, DECON_VIDCON0, VIDCON0_ENVID | VIDCON0_ENVID_F, ~0);

 decon_set_bits(ctx, DECON_UPDATE, STANDALONE_UPDATE_F, ~0);
}
