
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mcde {int stride; scalar_t__ regs; scalar_t__ te_sync; TYPE_3__* mdsi; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_simple_display_pipe {struct drm_plane plane; struct drm_crtc crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_display_mode {int hdisplay; int vdisplay; int flags; } ;
struct drm_device {int dev; struct mcde* dev_private; } ;
struct drm_crtc_state {struct drm_display_mode mode; } ;
struct TYPE_6__ {int mode_flags; int format; } ;
struct TYPE_5__ {int format; int* cpp; } ;
struct TYPE_4__ {struct drm_framebuffer* fb; } ;


 int DRM_MODE_FLAG_NVSYNC ;
 int MCDE_CHANNEL_0 ;
 scalar_t__ MCDE_CRC ;
 int MCDE_CRC_SYCEN0 ;
 int MCDE_DSI_FORMATTER_0 ;
 int MCDE_EXTSRC_0 ;
 int MCDE_FIFO_A ;
 int MCDE_OVERLAY_0 ;
 scalar_t__ MCDE_VSCRC0 ;
 int MCDE_VSCRC_VSPOL ;
 int MIPI_DSI_MODE_VIDEO ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,...) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int drm_get_format_name (int,struct drm_format_name_buf*) ;
 int mcde_configure_channel (struct mcde*,int ,int ,struct drm_display_mode const*) ;
 int mcde_configure_dsi_formatter (struct mcde*,int ,int,int) ;
 int mcde_configure_extsrc (struct mcde*,int ,int) ;
 int mcde_configure_fifo (struct mcde*,int ,int ,int) ;
 int mcde_configure_overlay (struct mcde*,int ,int ,int ,struct drm_display_mode const*,int) ;
 int mcde_drain_pipe (struct mcde*,int ,int ) ;
 int mcde_dsi_get_pkt_div (int,int) ;
 int min (int,int) ;
 int mipi_dsi_pixel_format_to_bpp (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mcde_display_enable(struct drm_simple_display_pipe *pipe,
    struct drm_crtc_state *cstate,
    struct drm_plane_state *plane_state)
{
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_plane *plane = &pipe->plane;
 struct drm_device *drm = crtc->dev;
 struct mcde *mcde = drm->dev_private;
 const struct drm_display_mode *mode = &cstate->mode;
 struct drm_framebuffer *fb = plane->state->fb;
 u32 format = fb->format->format;
 u32 formatter_ppl = mode->hdisplay;
 u32 formatter_lpf = mode->vdisplay;
 int pkt_size, fifo_wtrmrk;
 int cpp = fb->format->cpp[0];
 int formatter_cpp;
 struct drm_format_name_buf tmp;
 u32 formatter_frame;
 u32 pkt_div;
 u32 val;

 dev_info(drm->dev, "enable MCDE, %d x %d format %s\n",
   mode->hdisplay, mode->vdisplay,
   drm_get_format_name(format, &tmp));
 if (!mcde->mdsi) {

  dev_err(drm->dev, "no DSI master attached!\n");
  return;
 }

 dev_info(drm->dev, "output in %s mode, format %dbpp\n",
   (mcde->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO) ?
   "VIDEO" : "CMD",
   mipi_dsi_pixel_format_to_bpp(mcde->mdsi->format));
 formatter_cpp =
  mipi_dsi_pixel_format_to_bpp(mcde->mdsi->format) / 8;
 dev_info(drm->dev, "overlay CPP %d bytes, DSI CPP %d bytes\n",
   cpp,
   formatter_cpp);
 fifo_wtrmrk = mode->hdisplay;
 if (mcde->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO) {
  fifo_wtrmrk = min(fifo_wtrmrk, 128);
  pkt_div = 1;
 } else {
  fifo_wtrmrk = min(fifo_wtrmrk, 48);

  pkt_div = mcde_dsi_get_pkt_div(mode->hdisplay, 640);
 }
 dev_dbg(drm->dev, "FIFO watermark after flooring: %d bytes\n",
  fifo_wtrmrk);
 dev_dbg(drm->dev, "Packet divisor: %d bytes\n", pkt_div);


 pkt_size = (formatter_ppl * formatter_cpp) / pkt_div;

 if (!(mcde->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO))
  pkt_size++;

 dev_dbg(drm->dev, "DSI packet size: %d * %d bytes per line\n",
  pkt_size, pkt_div);
 dev_dbg(drm->dev, "Overlay frame size: %u bytes\n",
  mode->hdisplay * mode->vdisplay * cpp);
 mcde->stride = mode->hdisplay * cpp;
 dev_dbg(drm->dev, "Overlay line stride: %u bytes\n",
  mcde->stride);

 formatter_frame = pkt_size * pkt_div * formatter_lpf;
 dev_dbg(drm->dev, "Formatter frame size: %u bytes\n", formatter_frame);


 mcde_drain_pipe(mcde, MCDE_FIFO_A, MCDE_CHANNEL_0);
 mcde_configure_extsrc(mcde, MCDE_EXTSRC_0, format);






 mcde_configure_overlay(mcde, MCDE_OVERLAY_0, MCDE_EXTSRC_0,
          MCDE_CHANNEL_0, mode, format);





 mcde_configure_channel(mcde, MCDE_CHANNEL_0, MCDE_FIFO_A, mode);


 mcde_configure_fifo(mcde, MCDE_FIFO_A, MCDE_DSI_FORMATTER_0,
       fifo_wtrmrk);


 mcde_configure_dsi_formatter(mcde, MCDE_DSI_FORMATTER_0,
         formatter_frame, pkt_size);

 if (mcde->te_sync) {
  if (mode->flags & DRM_MODE_FLAG_NVSYNC)
   val = MCDE_VSCRC_VSPOL;
  else
   val = 0;
  writel(val, mcde->regs + MCDE_VSCRC0);

  val = readl(mcde->regs + MCDE_CRC);
  val |= MCDE_CRC_SYCEN0;
  writel(val, mcde->regs + MCDE_CRC);

  drm_crtc_vblank_on(crtc);
 }

 dev_info(drm->dev, "MCDE display is enabled\n");
}
