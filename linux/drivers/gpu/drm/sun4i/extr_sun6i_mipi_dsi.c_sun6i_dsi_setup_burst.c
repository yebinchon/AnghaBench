
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sun6i_dsi {int regs; struct mipi_dsi_device* device; } ;
struct mipi_dsi_device {int mode_flags; int format; } ;
struct drm_display_mode {int hsync_end; int hdisplay; } ;


 int MIPI_DSI_MODE_VIDEO_BURST ;
 int SUN6I_DSI_BURST_DRQ_EDGE0 (int) ;
 int SUN6I_DSI_BURST_DRQ_EDGE1 (int) ;
 int SUN6I_DSI_BURST_DRQ_REG ;
 int SUN6I_DSI_BURST_LINE_NUM (int) ;
 int SUN6I_DSI_BURST_LINE_REG ;
 int SUN6I_DSI_BURST_LINE_SYNC_POINT (int ) ;
 int SUN6I_DSI_SYNC_POINT ;
 int SUN6I_DSI_TCON_DRQ_ENABLE_MODE ;
 int SUN6I_DSI_TCON_DRQ_REG ;
 int SUN6I_DSI_TCON_DRQ_SET (int) ;
 int mipi_dsi_pixel_format_to_bpp (int ) ;
 int regmap_write (int ,int ,int) ;
 int sun6i_dsi_get_drq_edge0 (struct sun6i_dsi*,struct drm_display_mode*,int,int) ;
 int sun6i_dsi_get_drq_edge1 (struct sun6i_dsi*,struct drm_display_mode*,int) ;
 int sun6i_dsi_get_line_num (struct sun6i_dsi*,struct drm_display_mode*) ;

__attribute__((used)) static void sun6i_dsi_setup_burst(struct sun6i_dsi *dsi,
      struct drm_display_mode *mode)
{
 struct mipi_dsi_device *device = dsi->device;
 u32 val = 0;

 if (device->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
  u16 line_num = sun6i_dsi_get_line_num(dsi, mode);
  u16 edge0, edge1;

  edge1 = sun6i_dsi_get_drq_edge1(dsi, mode, line_num);
  edge0 = sun6i_dsi_get_drq_edge0(dsi, mode, line_num, edge1);

  regmap_write(dsi->regs, SUN6I_DSI_BURST_DRQ_REG,
        SUN6I_DSI_BURST_DRQ_EDGE0(edge0) |
        SUN6I_DSI_BURST_DRQ_EDGE1(edge1));

  regmap_write(dsi->regs, SUN6I_DSI_BURST_LINE_REG,
        SUN6I_DSI_BURST_LINE_NUM(line_num) |
        SUN6I_DSI_BURST_LINE_SYNC_POINT(SUN6I_DSI_SYNC_POINT));

  val = SUN6I_DSI_TCON_DRQ_ENABLE_MODE;
 } else if ((mode->hsync_end - mode->hdisplay) > 20) {

  u16 drq = (mode->hsync_end - mode->hdisplay) - 20;

  drq *= mipi_dsi_pixel_format_to_bpp(device->format);
  drq /= 32;

  val = (SUN6I_DSI_TCON_DRQ_ENABLE_MODE |
         SUN6I_DSI_TCON_DRQ_SET(drq));
 }

 regmap_write(dsi->regs, SUN6I_DSI_TCON_DRQ_REG, val);
}
