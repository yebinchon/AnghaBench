
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dc {int dev; } ;


 int COMMON_ACTREQ ;
 int COMMON_UPDATE ;
 int CURS_SLOTS (int) ;
 int DC_CMD_IHUB_COMMON_MISC_CTL ;
 int DC_CMD_STATE_CONTROL ;
 int DC_DISP_IHUB_COMMON_DISPLAY_FETCH_METER ;
 int LATENCY_EVENT ;
 int WGRP_SLOTS (int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int tegra_dc_readl (struct tegra_dc*,int ) ;
 int tegra_dc_writel (struct tegra_dc*,int,int ) ;

__attribute__((used)) static void tegra_display_hub_update(struct tegra_dc *dc)
{
 u32 value;

 pm_runtime_get_sync(dc->dev);

 value = tegra_dc_readl(dc, DC_CMD_IHUB_COMMON_MISC_CTL);
 value &= ~LATENCY_EVENT;
 tegra_dc_writel(dc, value, DC_CMD_IHUB_COMMON_MISC_CTL);

 value = tegra_dc_readl(dc, DC_DISP_IHUB_COMMON_DISPLAY_FETCH_METER);
 value = CURS_SLOTS(1) | WGRP_SLOTS(1);
 tegra_dc_writel(dc, value, DC_DISP_IHUB_COMMON_DISPLAY_FETCH_METER);

 tegra_dc_writel(dc, COMMON_UPDATE, DC_CMD_STATE_CONTROL);
 tegra_dc_readl(dc, DC_CMD_STATE_CONTROL);
 tegra_dc_writel(dc, COMMON_ACTREQ, DC_CMD_STATE_CONTROL);
 tegra_dc_readl(dc, DC_CMD_STATE_CONTROL);

 pm_runtime_put(dc->dev);
}
