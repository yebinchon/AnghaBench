
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_dpi_output {int panel_on; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DSI_DPI_CTRL_HS_TURN_ON ;
 int DSI_INTR_STATE_SPL_PKG_SENT ;
 int MIPI_DPI_CONTROL_REG (int) ;
 int MIPI_INTR_STAT_REG (int) ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int mdfld_wait_for_SPL_PKG_SENT (struct drm_device*,int) ;

void mdfld_dsi_dpi_turn_on(struct mdfld_dsi_dpi_output *output, int pipe)
{
 struct drm_device *dev = output->dev;


 if (REG_READ(MIPI_INTR_STAT_REG(pipe)) & DSI_INTR_STATE_SPL_PKG_SENT)
  REG_WRITE(MIPI_INTR_STAT_REG(pipe),
     DSI_INTR_STATE_SPL_PKG_SENT);


 REG_WRITE(MIPI_DPI_CONTROL_REG(pipe), DSI_DPI_CTRL_HS_TURN_ON);


 mdfld_wait_for_SPL_PKG_SENT(dev, pipe);

 if (REG_READ(MIPI_INTR_STAT_REG(pipe)) & DSI_INTR_STATE_SPL_PKG_SENT)
  REG_WRITE(MIPI_INTR_STAT_REG(pipe),
     DSI_INTR_STATE_SPL_PKG_SENT);

 output->panel_on = 1;







}
