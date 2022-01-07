
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_dpi_output {scalar_t__ first_boot; scalar_t__ panel_on; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DSI_DPI_CTRL_HS_SHUTDOWN ;
 int DSI_INTR_STATE_SPL_PKG_SENT ;
 int MIPI_DPI_CONTROL_REG (int) ;
 int MIPI_INTR_STAT_REG (int) ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int mdfld_wait_for_DPI_CTRL_FIFO (struct drm_device*,int) ;

__attribute__((used)) static void mdfld_dsi_dpi_shut_down(struct mdfld_dsi_dpi_output *output,
        int pipe)
{
 struct drm_device *dev = output->dev;


 if ((!output->panel_on) || output->first_boot) {
  output->first_boot = 0;
  return;
 }


 mdfld_wait_for_DPI_CTRL_FIFO(dev, pipe);


 if (REG_READ(MIPI_INTR_STAT_REG(pipe)) & DSI_INTR_STATE_SPL_PKG_SENT)
  REG_WRITE(MIPI_INTR_STAT_REG(pipe),
     DSI_INTR_STATE_SPL_PKG_SENT);

 if (REG_READ(MIPI_DPI_CONTROL_REG(pipe)) == DSI_DPI_CTRL_HS_SHUTDOWN)
  goto shutdown_out;

 REG_WRITE(MIPI_DPI_CONTROL_REG(pipe), DSI_DPI_CTRL_HS_SHUTDOWN);

shutdown_out:
 output->panel_on = 0;
 output->first_boot = 0;







}
