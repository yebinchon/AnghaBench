
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_dpi_timing {int hsync_count; int hbp_count; int hfp_count; int hactive_count; int vsync_count; int vbp_count; int vfp_count; } ;
struct mdfld_dsi_config {int bpp; int lane_count; struct drm_display_mode* mode; struct drm_device* dev; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_device {int dummy; } ;


 int DSI_DPI_TIMING_MASK ;
 int MIPI_DPI_RESOLUTION_REG (int) ;
 int MIPI_HACTIVE_COUNT_REG (int) ;
 int MIPI_HBP_COUNT_REG (int) ;
 int MIPI_HFP_COUNT_REG (int) ;
 int MIPI_HSYNC_COUNT_REG (int) ;
 int MIPI_VBP_COUNT_REG (int) ;
 int MIPI_VFP_COUNT_REG (int) ;
 int MIPI_VSYNC_COUNT_REG (int) ;
 int REG_WRITE (int ,int) ;
 int mdfld_dsi_dpi_timing_calculation (struct drm_display_mode*,struct mdfld_dsi_dpi_timing*,int ,int ) ;

__attribute__((used)) static void mdfld_mipi_set_video_timing(struct mdfld_dsi_config *dsi_config,
     int pipe)
{
 struct drm_device *dev = dsi_config->dev;
 struct mdfld_dsi_dpi_timing dpi_timing;
 struct drm_display_mode *mode = dsi_config->mode;

 mdfld_dsi_dpi_timing_calculation(mode, &dpi_timing,
     dsi_config->lane_count,
     dsi_config->bpp);

 REG_WRITE(MIPI_DPI_RESOLUTION_REG(pipe),
  mode->vdisplay << 16 | mode->hdisplay);
 REG_WRITE(MIPI_HSYNC_COUNT_REG(pipe),
  dpi_timing.hsync_count & DSI_DPI_TIMING_MASK);
 REG_WRITE(MIPI_HBP_COUNT_REG(pipe),
  dpi_timing.hbp_count & DSI_DPI_TIMING_MASK);
 REG_WRITE(MIPI_HFP_COUNT_REG(pipe),
  dpi_timing.hfp_count & DSI_DPI_TIMING_MASK);
 REG_WRITE(MIPI_HACTIVE_COUNT_REG(pipe),
  dpi_timing.hactive_count & DSI_DPI_TIMING_MASK);
 REG_WRITE(MIPI_VSYNC_COUNT_REG(pipe),
  dpi_timing.vsync_count & DSI_DPI_TIMING_MASK);
 REG_WRITE(MIPI_VBP_COUNT_REG(pipe),
  dpi_timing.vbp_count & DSI_DPI_TIMING_MASK);
 REG_WRITE(MIPI_VFP_COUNT_REG(pipe),
  dpi_timing.vfp_count & DSI_DPI_TIMING_MASK);
}
