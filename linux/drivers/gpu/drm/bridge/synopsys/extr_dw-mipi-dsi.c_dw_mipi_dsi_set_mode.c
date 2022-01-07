
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int dummy; } ;


 int DSI_LPCLK_CTRL ;
 int DSI_MODE_CFG ;
 int DSI_PWR_UP ;
 int ENABLE_CMD_MODE ;
 int ENABLE_VIDEO_MODE ;
 unsigned long MIPI_DSI_MODE_VIDEO ;
 int PHY_TXREQUESTCLKHS ;
 int POWERUP ;
 int RESET ;
 int dsi_write (struct dw_mipi_dsi*,int ,int ) ;
 int dw_mipi_dsi_video_mode_config (struct dw_mipi_dsi*) ;

__attribute__((used)) static void dw_mipi_dsi_set_mode(struct dw_mipi_dsi *dsi,
     unsigned long mode_flags)
{
 dsi_write(dsi, DSI_PWR_UP, RESET);

 if (mode_flags & MIPI_DSI_MODE_VIDEO) {
  dsi_write(dsi, DSI_MODE_CFG, ENABLE_VIDEO_MODE);
  dw_mipi_dsi_video_mode_config(dsi);
  dsi_write(dsi, DSI_LPCLK_CTRL, PHY_TXREQUESTCLKHS);
 } else {
  dsi_write(dsi, DSI_MODE_CFG, ENABLE_CMD_MODE);
 }

 dsi_write(dsi, DSI_PWR_UP, POWERUP);
}
