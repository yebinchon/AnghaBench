
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int dummy; } ;
struct drm_display_mode {int hdisplay; } ;


 int DSI_VID_PKT_SIZE ;
 int VID_PKT_SIZE (int) ;
 int dsi_write (struct dw_mipi_dsi*,int ,int ) ;
 scalar_t__ dw_mipi_is_dual_mode (struct dw_mipi_dsi*) ;

__attribute__((used)) static void dw_mipi_dsi_video_packet_config(struct dw_mipi_dsi *dsi,
         const struct drm_display_mode *mode)
{
 dsi_write(dsi, DSI_VID_PKT_SIZE,
         dw_mipi_is_dual_mode(dsi) ?
    VID_PKT_SIZE(mode->hdisplay / 2) :
    VID_PKT_SIZE(mode->hdisplay));
}
