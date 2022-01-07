
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mipi_dsi {scalar_t__ base; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DSI_PHY_RSTZ ;
 scalar_t__ DSI_PHY_STATUS ;
 int PHY_ENABLECLK ;
 int PHY_ENFORCEPLL ;
 int PHY_LOCK ;
 int PHY_STATUS_TIMEOUT_US ;
 int PHY_STOP_STATE_CLK_LANE ;
 int PHY_UNRSTZ ;
 int PHY_UNSHUTDOWNZ ;
 int dsi_write (struct dw_mipi_dsi*,int ,int) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int ) ;

__attribute__((used)) static void dw_mipi_dsi_dphy_enable(struct dw_mipi_dsi *dsi)
{
 u32 val;
 int ret;

 dsi_write(dsi, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
    PHY_UNRSTZ | PHY_UNSHUTDOWNZ);

 ret = readl_poll_timeout(dsi->base + DSI_PHY_STATUS, val,
     val & PHY_LOCK, 1000, PHY_STATUS_TIMEOUT_US);
 if (ret)
  DRM_DEBUG_DRIVER("failed to wait phy lock state\n");

 ret = readl_poll_timeout(dsi->base + DSI_PHY_STATUS,
     val, val & PHY_STOP_STATE_CLK_LANE, 1000,
     PHY_STATUS_TIMEOUT_US);
 if (ret)
  DRM_DEBUG_DRIVER("failed to wait phy clk lane stop state\n");
}
