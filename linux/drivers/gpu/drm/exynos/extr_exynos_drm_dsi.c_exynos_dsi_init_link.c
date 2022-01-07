
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_dsi_driver_data {int * reg_values; scalar_t__ has_clklane_stop; } ;
struct exynos_dsi {int mode_flags; int format; int dev; int lanes; struct exynos_dsi_driver_data* driver_data; } ;


 int BIT (int ) ;
 int DSIM_AUTO_MODE ;
 int DSIM_BTA_TIMEOUT (int) ;
 int DSIM_BURST_MODE ;
 int DSIM_CLKLANE_STOP ;
 int DSIM_CONFIG_REG ;
 int DSIM_EOT_DISABLE ;
 int DSIM_ESCMODE_REG ;
 int DSIM_FIFOCTRL_REG ;
 int DSIM_HBP_MODE ;
 int DSIM_HFP_MODE ;
 int DSIM_HSA_MODE ;
 int DSIM_HSE_MODE ;
 int DSIM_LPDR_TIMEOUT (int) ;
 int DSIM_MAIN_PIX_FORMAT_RGB565 ;
 int DSIM_MAIN_PIX_FORMAT_RGB666 ;
 int DSIM_MAIN_PIX_FORMAT_RGB666_P ;
 int DSIM_MAIN_PIX_FORMAT_RGB888 ;
 int DSIM_MFLUSH_VS ;
 int DSIM_STATUS_REG ;
 int DSIM_STOP_STATE_CLK ;
 int DSIM_STOP_STATE_CNT (int ) ;
 int DSIM_STOP_STATE_CNT_MASK ;
 int DSIM_STOP_STATE_DAT (int) ;
 int DSIM_SYNC_INFORM ;
 int DSIM_TIMEOUT_REG ;
 int DSIM_TX_READY_HS_CLK ;
 int DSIM_VIDEO_MODE ;
 int EFAULT ;
 int EINVAL ;
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ;




 int MIPI_DSI_MODE_EOT_PACKET ;
 int MIPI_DSI_MODE_VIDEO ;
 int MIPI_DSI_MODE_VIDEO_AUTO_VERT ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int MIPI_DSI_MODE_VIDEO_HBP ;
 int MIPI_DSI_MODE_VIDEO_HFP ;
 int MIPI_DSI_MODE_VIDEO_HSA ;
 int MIPI_DSI_MODE_VIDEO_HSE ;
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ;
 int MIPI_DSI_MODE_VSYNC_FLUSH ;
 size_t STOP_STATE_CNT ;
 int dev_err (int ,char*) ;
 int exynos_dsi_enable_lane (struct exynos_dsi*,int) ;
 int exynos_dsi_read (struct exynos_dsi*,int ) ;
 int exynos_dsi_write (struct exynos_dsi*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int exynos_dsi_init_link(struct exynos_dsi *dsi)
{
 const struct exynos_dsi_driver_data *driver_data = dsi->driver_data;
 int timeout;
 u32 reg;
 u32 lanes_mask;


 reg = exynos_dsi_read(dsi, DSIM_FIFOCTRL_REG);
 reg &= ~0x1f;
 exynos_dsi_write(dsi, DSIM_FIFOCTRL_REG, reg);

 usleep_range(9000, 11000);

 reg |= 0x1f;
 exynos_dsi_write(dsi, DSIM_FIFOCTRL_REG, reg);
 usleep_range(9000, 11000);


 reg = 0;






 if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO) {
  reg |= DSIM_VIDEO_MODE;





  if (!(dsi->mode_flags & MIPI_DSI_MODE_VSYNC_FLUSH))
   reg |= DSIM_MFLUSH_VS;
  if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
   reg |= DSIM_SYNC_INFORM;
  if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
   reg |= DSIM_BURST_MODE;
  if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_AUTO_VERT)
   reg |= DSIM_AUTO_MODE;
  if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_HSE)
   reg |= DSIM_HSE_MODE;
  if (!(dsi->mode_flags & MIPI_DSI_MODE_VIDEO_HFP))
   reg |= DSIM_HFP_MODE;
  if (!(dsi->mode_flags & MIPI_DSI_MODE_VIDEO_HBP))
   reg |= DSIM_HBP_MODE;
  if (!(dsi->mode_flags & MIPI_DSI_MODE_VIDEO_HSA))
   reg |= DSIM_HSA_MODE;
 }

 if (!(dsi->mode_flags & MIPI_DSI_MODE_EOT_PACKET))
  reg |= DSIM_EOT_DISABLE;

 switch (dsi->format) {
 case 128:
  reg |= DSIM_MAIN_PIX_FORMAT_RGB888;
  break;
 case 130:
  reg |= DSIM_MAIN_PIX_FORMAT_RGB666;
  break;
 case 129:
  reg |= DSIM_MAIN_PIX_FORMAT_RGB666_P;
  break;
 case 131:
  reg |= DSIM_MAIN_PIX_FORMAT_RGB565;
  break;
 default:
  dev_err(dsi->dev, "invalid pixel format\n");
  return -EINVAL;
 }
 if (driver_data->has_clklane_stop &&
   dsi->mode_flags & MIPI_DSI_CLOCK_NON_CONTINUOUS) {
  reg |= DSIM_CLKLANE_STOP;
 }
 exynos_dsi_write(dsi, DSIM_CONFIG_REG, reg);

 lanes_mask = BIT(dsi->lanes) - 1;
 exynos_dsi_enable_lane(dsi, lanes_mask);


 timeout = 100;
 do {
  if (timeout-- == 0) {
   dev_err(dsi->dev, "waiting for bus lanes timed out\n");
   return -EFAULT;
  }

  reg = exynos_dsi_read(dsi, DSIM_STATUS_REG);
  if ((reg & DSIM_STOP_STATE_DAT(lanes_mask))
      != DSIM_STOP_STATE_DAT(lanes_mask))
   continue;
 } while (!(reg & (DSIM_STOP_STATE_CLK | DSIM_TX_READY_HS_CLK)));

 reg = exynos_dsi_read(dsi, DSIM_ESCMODE_REG);
 reg &= ~DSIM_STOP_STATE_CNT_MASK;
 reg |= DSIM_STOP_STATE_CNT(driver_data->reg_values[STOP_STATE_CNT]);
 exynos_dsi_write(dsi, DSIM_ESCMODE_REG, reg);

 reg = DSIM_BTA_TIMEOUT(0xff) | DSIM_LPDR_TIMEOUT(0xffff);
 exynos_dsi_write(dsi, DSIM_TIMEOUT_REG, reg);

 return 0;
}
