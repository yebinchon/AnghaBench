
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct mcde_dsi {int hs_freq; scalar_t__ regs; TYPE_1__* mdsi; int dev; } ;
struct drm_display_mode {int vdisplay; int vsync_start; int vsync_end; int vtotal; int hsync_start; int hdisplay; int htotal; int hsync_end; int clock; } ;
struct TYPE_2__ {int format; int mode_flags; int lanes; } ;


 scalar_t__ DSI_CMD_MODE_CTL ;
 int DSI_CMD_MODE_CTL_IF1_LP_EN ;
 scalar_t__ DSI_MCTL_MAIN_DATA_CTL ;
 int DSI_MCTL_MAIN_DATA_CTL_IF1_MODE ;
 int DSI_MCTL_MAIN_DATA_CTL_VID_EN ;
 scalar_t__ DSI_VID_BLKSIZE1 ;
 int DSI_VID_BLKSIZE1_BLKEOL_PCK_SHIFT ;
 int DSI_VID_BLKSIZE1_BLKLINE_EVENT_PCK_SHIFT ;
 scalar_t__ DSI_VID_BLKSIZE2 ;
 int DSI_VID_BLKSIZE2_BLKLINE_PULSE_PCK_SHIFT ;
 scalar_t__ DSI_VID_DPHY_TIME ;
 int DSI_VID_DPHY_TIME_REG_LINE_DURATION_SHIFT ;
 int DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT ;
 scalar_t__ DSI_VID_HSIZE1 ;
 int DSI_VID_HSIZE1_HBP_LENGTH_SHIFT ;
 int DSI_VID_HSIZE1_HFP_LENGTH_SHIFT ;
 int DSI_VID_HSIZE1_HSA_LENGTH_SHIFT ;
 scalar_t__ DSI_VID_HSIZE2 ;
 scalar_t__ DSI_VID_MAIN_CTL ;
 int DSI_VID_MAIN_CTL_BURST_MODE ;
 int DSI_VID_MAIN_CTL_HEADER_SHIFT ;
 int DSI_VID_MAIN_CTL_RECOVERY_MODE_SHIFT ;
 int DSI_VID_MAIN_CTL_REG_BLKEOL_MODE_LP_0 ;
 int DSI_VID_MAIN_CTL_REG_BLKLINE_MODE_LP_0 ;
 int DSI_VID_MAIN_CTL_SYNC_PULSE_ACTIVE ;
 int DSI_VID_MAIN_CTL_SYNC_PULSE_HORIZONTAL ;
 int DSI_VID_MAIN_CTL_VID_PIXEL_MODE_16BITS ;
 int DSI_VID_MAIN_CTL_VID_PIXEL_MODE_18BITS ;
 int DSI_VID_MAIN_CTL_VID_PIXEL_MODE_18BITS_LOOSE ;
 int DSI_VID_MAIN_CTL_VID_PIXEL_MODE_24BITS ;
 scalar_t__ DSI_VID_MODE_STS_CTL ;
 int DSI_VID_MODE_STS_CTL_ERR_MISSING_DATA ;
 int DSI_VID_MODE_STS_CTL_ERR_MISSING_VSYNC ;
 scalar_t__ DSI_VID_PCK_TIME ;
 scalar_t__ DSI_VID_VCA_SETTING1 ;
 scalar_t__ DSI_VID_VCA_SETTING2 ;
 int DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT ;
 scalar_t__ DSI_VID_VSIZE ;
 int DSI_VID_VSIZE_VACT_LENGTH_SHIFT ;
 int DSI_VID_VSIZE_VBP_LENGTH_SHIFT ;
 int DSI_VID_VSIZE_VFP_LENGTH_SHIFT ;
 int DSI_VID_VSIZE_VSA_LENGTH_SHIFT ;




 int MIPI_DSI_MODE_VIDEO_BURST ;
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ;
 int MIPI_DSI_PACKED_PIXEL_STREAM_16 ;
 int MIPI_DSI_PACKED_PIXEL_STREAM_18 ;
 int MIPI_DSI_PACKED_PIXEL_STREAM_24 ;
 int MIPI_DSI_PIXEL_STREAM_3BYTE_18 ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*) ;
 int do_div (int,int) ;
 int mipi_dsi_pixel_format_to_bpp (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
          const struct drm_display_mode *mode)
{
 u8 bpp = mipi_dsi_pixel_format_to_bpp(d->mdsi->format);
 u64 bpl;
 u32 hfp;
 u32 hbp;
 u32 hsa;
 u32 blkline_pck, line_duration;
 u32 blkeol_pck, blkeol_duration;
 u32 val;

 val = 0;
 if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
  val |= DSI_VID_MAIN_CTL_BURST_MODE;
 if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
  val |= DSI_VID_MAIN_CTL_SYNC_PULSE_ACTIVE;
  val |= DSI_VID_MAIN_CTL_SYNC_PULSE_HORIZONTAL;
 }

 switch (d->mdsi->format) {
 case 131:
  val |= MIPI_DSI_PACKED_PIXEL_STREAM_16 <<
   DSI_VID_MAIN_CTL_HEADER_SHIFT;
  val |= DSI_VID_MAIN_CTL_VID_PIXEL_MODE_16BITS;
  break;
 case 129:
  val |= MIPI_DSI_PACKED_PIXEL_STREAM_18 <<
   DSI_VID_MAIN_CTL_HEADER_SHIFT;
  val |= DSI_VID_MAIN_CTL_VID_PIXEL_MODE_18BITS;
  break;
 case 130:
  val |= MIPI_DSI_PIXEL_STREAM_3BYTE_18
   << DSI_VID_MAIN_CTL_HEADER_SHIFT;
  val |= DSI_VID_MAIN_CTL_VID_PIXEL_MODE_18BITS_LOOSE;
  break;
 case 128:
  val |= MIPI_DSI_PACKED_PIXEL_STREAM_24 <<
   DSI_VID_MAIN_CTL_HEADER_SHIFT;
  val |= DSI_VID_MAIN_CTL_VID_PIXEL_MODE_24BITS;
  break;
 default:
  dev_err(d->dev, "unknown pixel mode\n");
  return;
 }




 val |= DSI_VID_MAIN_CTL_REG_BLKLINE_MODE_LP_0;

 val |= DSI_VID_MAIN_CTL_REG_BLKEOL_MODE_LP_0;

 val |= 1 << DSI_VID_MAIN_CTL_RECOVERY_MODE_SHIFT;

 writel(val, d->regs + DSI_VID_MAIN_CTL);


 val = mode->vdisplay << DSI_VID_VSIZE_VSA_LENGTH_SHIFT;

 val |= (mode->vsync_start - mode->vdisplay)
  << DSI_VID_VSIZE_VFP_LENGTH_SHIFT;

 val |= (mode->vsync_end - mode->vsync_start)
  << DSI_VID_VSIZE_VACT_LENGTH_SHIFT;

 val |= (mode->vtotal - mode->vsync_end)
  << DSI_VID_VSIZE_VBP_LENGTH_SHIFT;
 writel(val, d->regs + DSI_VID_VSIZE);
 hfp = (mode->hsync_start - mode->hdisplay) * bpp - 6 - 2;
 if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {




  hbp = (mode->htotal - mode->hsync_end) * bpp - 4 - 6;





  hsa = (mode->hsync_end - mode->hsync_start) * bpp - 4 - 4 - 6;
 } else {






  hbp = (mode->htotal - mode->hsync_start) * bpp - 4 - 4 - 6;

  hsa = 0;
 }
 dev_dbg(d->dev, "hfp: %u, hbp: %u, hsa: %u\n",
  hfp, hbp, hsa);


 val = hsa << DSI_VID_HSIZE1_HSA_LENGTH_SHIFT;

 val |= hbp << DSI_VID_HSIZE1_HBP_LENGTH_SHIFT;

 val |= hfp << DSI_VID_HSIZE1_HFP_LENGTH_SHIFT;
 writel(val, d->regs + DSI_VID_HSIZE1);


 val = mode->hdisplay * (bpp / 8);
 writel(val, d->regs + DSI_VID_HSIZE2);
 bpl = mode->clock * mode->htotal;
 bpl *= (d->hs_freq / 8);
 do_div(bpl, 1000000);
 do_div(bpl, 1000000);
 bpl *= d->mdsi->lanes;
 dev_dbg(d->dev, "calculated bytes per line: %llu\n", bpl);




 if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {

  blkline_pck = bpl - (mode->hsync_end - mode->hsync_start) - 6;
  val = blkline_pck << DSI_VID_BLKSIZE2_BLKLINE_PULSE_PCK_SHIFT;
  writel(val, d->regs + DSI_VID_BLKSIZE2);
 } else {
  blkline_pck = bpl - 4 - 6;
  val = blkline_pck << DSI_VID_BLKSIZE1_BLKLINE_EVENT_PCK_SHIFT;
  writel(val, d->regs + DSI_VID_BLKSIZE1);
 }

 line_duration = (blkline_pck + 6) / d->mdsi->lanes;
 dev_dbg(d->dev, "line duration %u\n", line_duration);
 val = line_duration << DSI_VID_DPHY_TIME_REG_LINE_DURATION_SHIFT;




 val |= 0 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
 writel(val, d->regs + DSI_VID_DPHY_TIME);


 blkeol_pck = bpl - mode->hdisplay * bpp - 6;
 blkeol_duration = (blkeol_pck + 6) / d->mdsi->lanes;
 dev_dbg(d->dev, "blkeol pck: %u, duration: %u\n",
   blkeol_pck, blkeol_duration);

 if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {

  val = readl(d->regs + DSI_VID_BLKSIZE1);
  val |= blkeol_pck << DSI_VID_BLKSIZE1_BLKEOL_PCK_SHIFT;
  writel(val, d->regs + DSI_VID_BLKSIZE1);
  writel(blkeol_pck, d->regs + DSI_VID_VCA_SETTING2);

  writel(blkeol_duration, d->regs + DSI_VID_PCK_TIME);
  writel(blkeol_duration - 6, d->regs + DSI_VID_VCA_SETTING1);
 }


 val = readl(d->regs + DSI_VID_VCA_SETTING2);
 val |= blkline_pck <<
  DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT;
 writel(val, d->regs + DSI_VID_VCA_SETTING2);


 val = readl(d->regs + DSI_MCTL_MAIN_DATA_CTL);
 val |= DSI_MCTL_MAIN_DATA_CTL_IF1_MODE;
 writel(val, d->regs + DSI_MCTL_MAIN_DATA_CTL);


 val = readl(d->regs + DSI_CMD_MODE_CTL);
 val &= ~DSI_CMD_MODE_CTL_IF1_LP_EN;
 writel(val, d->regs + DSI_CMD_MODE_CTL);


 val = readl(d->regs + DSI_VID_MODE_STS_CTL);
 val |= DSI_VID_MODE_STS_CTL_ERR_MISSING_VSYNC;
 val |= DSI_VID_MODE_STS_CTL_ERR_MISSING_DATA;
 writel(val, d->regs + DSI_VID_MODE_STS_CTL);


 val = readl(d->regs + DSI_MCTL_MAIN_DATA_CTL);
 val |= DSI_MCTL_MAIN_DATA_CTL_VID_EN;
 writel(val, d->regs + DSI_MCTL_MAIN_DATA_CTL);
}
