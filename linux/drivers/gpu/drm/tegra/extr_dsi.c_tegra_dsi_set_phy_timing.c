
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dsi {struct tegra_dsi* slave; } ;
struct mipi_dphy_timing {int hsexit; int hstrail; int hszero; int hsprepare; int clktrail; int clkpost; int clkzero; int lpx; int clkprepare; int clkpre; int taget; int tasure; int tago; } ;


 int DSI_BTA_TIMING ;
 int DSI_PHY_TIMING_0 ;
 int DSI_PHY_TIMING_1 ;
 int DSI_PHY_TIMING_2 ;
 int DSI_TIMING_FIELD (int,unsigned long,int) ;
 int tegra_dsi_writel (struct tegra_dsi*,int,int ) ;

__attribute__((used)) static void tegra_dsi_set_phy_timing(struct tegra_dsi *dsi,
         unsigned long period,
         const struct mipi_dphy_timing *timing)
{
 u32 value;

 value = DSI_TIMING_FIELD(timing->hsexit, period, 1) << 24 |
  DSI_TIMING_FIELD(timing->hstrail, period, 0) << 16 |
  DSI_TIMING_FIELD(timing->hszero, period, 3) << 8 |
  DSI_TIMING_FIELD(timing->hsprepare, period, 1);
 tegra_dsi_writel(dsi, value, DSI_PHY_TIMING_0);

 value = DSI_TIMING_FIELD(timing->clktrail, period, 1) << 24 |
  DSI_TIMING_FIELD(timing->clkpost, period, 1) << 16 |
  DSI_TIMING_FIELD(timing->clkzero, period, 1) << 8 |
  DSI_TIMING_FIELD(timing->lpx, period, 1);
 tegra_dsi_writel(dsi, value, DSI_PHY_TIMING_1);

 value = DSI_TIMING_FIELD(timing->clkprepare, period, 1) << 16 |
  DSI_TIMING_FIELD(timing->clkpre, period, 1) << 8 |
  DSI_TIMING_FIELD(0xff * period, period, 0) << 0;
 tegra_dsi_writel(dsi, value, DSI_PHY_TIMING_2);

 value = DSI_TIMING_FIELD(timing->taget, period, 1) << 16 |
  DSI_TIMING_FIELD(timing->tasure, period, 1) << 8 |
  DSI_TIMING_FIELD(timing->tago, period, 1);
 tegra_dsi_writel(dsi, value, DSI_BTA_TIMING);

 if (dsi->slave)
  tegra_dsi_set_phy_timing(dsi->slave, period, timing);
}
