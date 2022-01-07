
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_config {int lane_count; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int MIPI_DPHY_PARAM_REG (int) ;
 int MIPI_DSI_FUNC_PRG_REG (int) ;
 int MIPI_PORT_CONTROL (int) ;
 int MIPI_VIDEO_MODE_FORMAT_REG (int) ;
 int REG_WRITE (int ,int) ;
 int mdfld_mipi_set_video_timing (struct mdfld_dsi_config*,int) ;

__attribute__((used)) static void mdfld_mipi_config(struct mdfld_dsi_config *dsi_config, int pipe)
{
 struct drm_device *dev = dsi_config->dev;
 int lane_count = dsi_config->lane_count;

 if (pipe) {
  REG_WRITE(MIPI_PORT_CONTROL(0), 0x00000002);
  REG_WRITE(MIPI_PORT_CONTROL(2), 0x80000000);
 } else {
  REG_WRITE(MIPI_PORT_CONTROL(0), 0x80010000);
  REG_WRITE(MIPI_PORT_CONTROL(2), 0x00);
 }

 REG_WRITE(MIPI_DPHY_PARAM_REG(pipe), 0x150A600F);
 REG_WRITE(MIPI_VIDEO_MODE_FORMAT_REG(pipe), 0x0000000F);


 REG_WRITE(MIPI_DSI_FUNC_PRG_REG(pipe), 0x00000200 | lane_count);

 mdfld_mipi_set_video_timing(dsi_config, pipe);
}
