
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mipi_dsi {int format; int channel; } ;
struct drm_display_mode {int flags; } ;


 int DPI_COLOR_CODING_16BIT_1 ;
 int DPI_COLOR_CODING_18BIT_1 ;
 int DPI_COLOR_CODING_18BIT_2 ;
 int DPI_COLOR_CODING_24BIT ;
 int DPI_VCID (int ) ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int DSI_DPI_CFG_POL ;
 int DSI_DPI_COLOR_CODING ;
 int DSI_DPI_LP_CMD_TIM ;
 int DSI_DPI_VCID ;
 int HSYNC_ACTIVE_LOW ;
 int INVACT_LPCMD_TIME (int) ;
 int LOOSELY18_EN ;




 int OUTVACT_LPCMD_TIME (int) ;
 int VSYNC_ACTIVE_LOW ;
 int dsi_write (struct dw_mipi_dsi*,int ,int) ;

__attribute__((used)) static void dw_mipi_dsi_dpi_config(struct dw_mipi_dsi *dsi,
       const struct drm_display_mode *mode)
{
 u32 val = 0, color = 0;

 switch (dsi->format) {
 case 128:
  color = DPI_COLOR_CODING_24BIT;
  break;
 case 130:
  color = DPI_COLOR_CODING_18BIT_2 | LOOSELY18_EN;
  break;
 case 129:
  color = DPI_COLOR_CODING_18BIT_1;
  break;
 case 131:
  color = DPI_COLOR_CODING_16BIT_1;
  break;
 }

 if (mode->flags & DRM_MODE_FLAG_NVSYNC)
  val |= VSYNC_ACTIVE_LOW;
 if (mode->flags & DRM_MODE_FLAG_NHSYNC)
  val |= HSYNC_ACTIVE_LOW;

 dsi_write(dsi, DSI_DPI_VCID, DPI_VCID(dsi->channel));
 dsi_write(dsi, DSI_DPI_COLOR_CODING, color);
 dsi_write(dsi, DSI_DPI_CFG_POL, val);






 dsi_write(dsi, DSI_DPI_LP_CMD_TIM, OUTVACT_LPCMD_TIME(4)
    | INVACT_LPCMD_TIME(4));
}
