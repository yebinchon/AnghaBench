
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_config {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int MIPI_CLK_LANE_SWITCH_TIME_CNT_REG (int) ;
 int MIPI_CTRL_REG (int) ;
 int MIPI_DBI_BW_CTRL_REG (int) ;
 int MIPI_DEVICE_RESET_TIMER_REG (int) ;
 int MIPI_EOT_DISABLE_REG (int) ;
 int MIPI_HIGH_LOW_SWITCH_COUNT_REG (int) ;
 int MIPI_HS_TX_TIMEOUT_REG (int) ;
 int MIPI_INIT_COUNT_REG (int) ;
 int MIPI_INTR_EN_REG (int) ;
 int MIPI_LP_BYTECLK_REG (int) ;
 int MIPI_LP_RX_TIMEOUT_REG (int) ;
 int MIPI_TURN_AROUND_TIMEOUT_REG (int) ;
 int REG_WRITE (int ,int) ;

__attribute__((used)) static void mipi_set_properties(struct mdfld_dsi_config *dsi_config, int pipe)
{
 struct drm_device *dev = dsi_config->dev;

 REG_WRITE(MIPI_CTRL_REG(pipe), 0x00000018);
 REG_WRITE(MIPI_INTR_EN_REG(pipe), 0xffffffff);
 REG_WRITE(MIPI_HS_TX_TIMEOUT_REG(pipe), 0xffffff);
 REG_WRITE(MIPI_LP_RX_TIMEOUT_REG(pipe), 0xffffff);
 REG_WRITE(MIPI_TURN_AROUND_TIMEOUT_REG(pipe), 0x14);
 REG_WRITE(MIPI_DEVICE_RESET_TIMER_REG(pipe), 0xff);
 REG_WRITE(MIPI_HIGH_LOW_SWITCH_COUNT_REG(pipe), 0x25);
 REG_WRITE(MIPI_INIT_COUNT_REG(pipe), 0xf0);
 REG_WRITE(MIPI_EOT_DISABLE_REG(pipe), 0x00000000);
 REG_WRITE(MIPI_LP_BYTECLK_REG(pipe), 0x00000004);
 REG_WRITE(MIPI_DBI_BW_CTRL_REG(pipe), 0x00000820);
 REG_WRITE(MIPI_CLK_LANE_SWITCH_TIME_CNT_REG(pipe), (0xa << 16) | 0x14);
}
