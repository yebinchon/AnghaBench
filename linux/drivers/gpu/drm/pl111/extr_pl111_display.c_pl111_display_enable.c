
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct pl111_drm_dev_private {TYPE_3__* variant; scalar_t__ ctrl; scalar_t__ regs; int (* variant_display_enable ) (struct drm_device*,int) ;int tim2_lock; int clk; struct drm_bridge* bridge; struct drm_connector* connector; } ;
struct drm_plane {TYPE_2__* state; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_simple_display_pipe {struct drm_plane plane; struct drm_crtc crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
struct drm_display_mode {int clock; int hdisplay; int hsync_end; int hsync_start; int htotal; int vdisplay; int vsync_end; int vsync_start; int vtotal; int flags; } ;
struct drm_device {int dev; struct pl111_drm_dev_private* dev_private; } ;
struct drm_crtc_state {struct drm_display_mode mode; } ;
struct TYPE_8__ {int bus_flags; int num_bus_formats; scalar_t__* bus_formats; } ;
struct drm_connector {TYPE_4__ display_info; } ;
struct drm_bridge_timings {int setup_time_ps; } ;
struct drm_bridge {struct drm_bridge_timings* timings; } ;
struct TYPE_7__ {int broken_vblank; scalar_t__ external_bgr; scalar_t__ st_bitmux_control; int is_pl110; scalar_t__ broken_clockdivider; } ;
struct TYPE_6__ {struct drm_framebuffer* fb; } ;
struct TYPE_5__ {int format; } ;


 scalar_t__ CLCD_TIM0 ;
 scalar_t__ CLCD_TIM1 ;
 scalar_t__ CLCD_TIM2 ;
 scalar_t__ CLCD_TIM3 ;
 int CNTL_BGR ;
 int CNTL_LCDBPP16 ;
 int CNTL_LCDBPP16_444 ;
 int CNTL_LCDBPP16_565 ;
 int CNTL_LCDBPP24 ;
 int CNTL_LCDEN ;
 int CNTL_LCDMONO8 ;
 int CNTL_LCDPWR ;
 int CNTL_LCDTFT ;
 int CNTL_LCDVCOMP (int) ;
 int CNTL_ST_1XBPP_444 ;
 int CNTL_ST_1XBPP_5551 ;
 int CNTL_ST_1XBPP_565 ;
 int CNTL_ST_CDWID_24 ;
 int CNTL_ST_LCDBPP24_PACKED ;
 int DRM_BUS_FLAG_DE_LOW ;
 int DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 scalar_t__ MEDIA_BUS_FMT_Y8_1X8 ;
 int TIM2_ACB_MASK ;
 int TIM2_BCD ;
 int TIM2_IHS ;
 int TIM2_IOE ;
 int TIM2_IPC ;
 int TIM2_IVS ;
 int TIM2_PCD_HI_MASK ;
 int TIM2_PCD_LO_MASK ;
 int WARN_ONCE (int,char*,int) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_err (int ,char*,int,int) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct drm_device*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pl111_display_enable(struct drm_simple_display_pipe *pipe,
     struct drm_crtc_state *cstate,
     struct drm_plane_state *plane_state)
{
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_plane *plane = &pipe->plane;
 struct drm_device *drm = crtc->dev;
 struct pl111_drm_dev_private *priv = drm->dev_private;
 const struct drm_display_mode *mode = &cstate->mode;
 struct drm_framebuffer *fb = plane->state->fb;
 struct drm_connector *connector = priv->connector;
 struct drm_bridge *bridge = priv->bridge;
 bool grayscale = 0;
 u32 cntl;
 u32 ppl, hsw, hfp, hbp;
 u32 lpp, vsw, vfp, vbp;
 u32 cpl, tim2;
 int ret;

 ret = clk_set_rate(priv->clk, mode->clock * 1000);
 if (ret) {
  dev_err(drm->dev,
   "Failed to set pixel clock rate to %d: %d\n",
   mode->clock * 1000, ret);
 }

 clk_prepare_enable(priv->clk);

 ppl = (mode->hdisplay / 16) - 1;
 hsw = mode->hsync_end - mode->hsync_start - 1;
 hfp = mode->hsync_start - mode->hdisplay - 1;
 hbp = mode->htotal - mode->hsync_end - 1;

 lpp = mode->vdisplay - 1;
 vsw = mode->vsync_end - mode->vsync_start - 1;
 vfp = mode->vsync_start - mode->vdisplay;
 vbp = mode->vtotal - mode->vsync_end;

 cpl = mode->hdisplay - 1;

 writel((ppl << 2) |
        (hsw << 8) |
        (hfp << 16) |
        (hbp << 24),
        priv->regs + CLCD_TIM0);
 writel(lpp |
        (vsw << 10) |
        (vfp << 16) |
        (vbp << 24),
        priv->regs + CLCD_TIM1);

 spin_lock(&priv->tim2_lock);

 tim2 = readl(priv->regs + CLCD_TIM2);
 tim2 &= (TIM2_BCD | TIM2_PCD_LO_MASK | TIM2_PCD_HI_MASK);

 if (priv->variant->broken_clockdivider)
  tim2 |= TIM2_BCD;

 if (mode->flags & DRM_MODE_FLAG_NHSYNC)
  tim2 |= TIM2_IHS;

 if (mode->flags & DRM_MODE_FLAG_NVSYNC)
  tim2 |= TIM2_IVS;

 if (connector) {
  if (connector->display_info.bus_flags & DRM_BUS_FLAG_DE_LOW)
   tim2 |= TIM2_IOE;

  if (connector->display_info.bus_flags &
      DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE)
   tim2 |= TIM2_IPC;

  if (connector->display_info.num_bus_formats == 1 &&
      connector->display_info.bus_formats[0] ==
      MEDIA_BUS_FMT_Y8_1X8)
   grayscale = 1;







  if (grayscale)
   tim2 |= TIM2_ACB_MASK;
 }

 if (bridge) {
  const struct drm_bridge_timings *btimings = bridge->timings;
  if (btimings && btimings->setup_time_ps >= 3000)
   tim2 ^= TIM2_IPC;
 }

 tim2 |= cpl << 16;
 writel(tim2, priv->regs + CLCD_TIM2);
 spin_unlock(&priv->tim2_lock);

 writel(0, priv->regs + CLCD_TIM3);







 if (grayscale)
  cntl = CNTL_LCDEN | CNTL_LCDMONO8;
 else

  cntl = CNTL_LCDEN | CNTL_LCDTFT | CNTL_LCDVCOMP(1);


 if (priv->variant->st_bitmux_control)
  cntl |= CNTL_ST_CDWID_24;







 switch (fb->format->format) {
 case 136:

  if (priv->variant->st_bitmux_control)
   cntl |= CNTL_ST_LCDBPP24_PACKED | CNTL_BGR;
  break;
 case 134:

  if (priv->variant->st_bitmux_control)
   cntl |= CNTL_ST_LCDBPP24_PACKED;
  break;
 case 141:
 case 131:
  if (priv->variant->st_bitmux_control)
   cntl |= CNTL_LCDBPP24 | CNTL_BGR;
  else
   cntl |= CNTL_LCDBPP24;
  break;
 case 138:
 case 128:
  if (priv->variant->st_bitmux_control)
   cntl |= CNTL_LCDBPP24;
  else
   cntl |= CNTL_LCDBPP24 | CNTL_BGR;
  break;
 case 137:
  if (priv->variant->is_pl110)
   cntl |= CNTL_LCDBPP16;
  else if (priv->variant->st_bitmux_control)
   cntl |= CNTL_LCDBPP16 | CNTL_ST_1XBPP_565 | CNTL_BGR;
  else
   cntl |= CNTL_LCDBPP16_565;
  break;
 case 135:
  if (priv->variant->is_pl110)
   cntl |= CNTL_LCDBPP16 | CNTL_BGR;
  else if (priv->variant->st_bitmux_control)
   cntl |= CNTL_LCDBPP16 | CNTL_ST_1XBPP_565;
  else
   cntl |= CNTL_LCDBPP16_565 | CNTL_BGR;
  break;
 case 143:
 case 133:
  cntl |= CNTL_LCDBPP16;
  if (priv->variant->st_bitmux_control)
   cntl |= CNTL_ST_1XBPP_5551 | CNTL_BGR;
  break;
 case 140:
 case 130:
  cntl |= CNTL_LCDBPP16;
  if (priv->variant->st_bitmux_control)
   cntl |= CNTL_ST_1XBPP_5551;
  else
   cntl |= CNTL_BGR;
  break;
 case 142:
 case 132:
  cntl |= CNTL_LCDBPP16_444;
  if (priv->variant->st_bitmux_control)
   cntl |= CNTL_ST_1XBPP_444 | CNTL_BGR;
  break;
 case 139:
 case 129:
  cntl |= CNTL_LCDBPP16_444;
  if (priv->variant->st_bitmux_control)
   cntl |= CNTL_ST_1XBPP_444;
  else
   cntl |= CNTL_BGR;
  break;
 default:
  WARN_ONCE(1, "Unknown FB format 0x%08x\n",
     fb->format->format);
  break;
 }


 if (priv->variant->external_bgr)
  cntl &= ~CNTL_BGR;


 writel(cntl, priv->regs + priv->ctrl);





 msleep(20);

 if (priv->variant_display_enable)
  priv->variant_display_enable(drm, fb->format->format);


 cntl |= CNTL_LCDPWR;
 writel(cntl, priv->regs + priv->ctrl);

 if (!priv->variant->broken_vblank)
  drm_crtc_vblank_on(crtc);
}
