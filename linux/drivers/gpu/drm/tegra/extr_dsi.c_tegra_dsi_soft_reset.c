
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dsi {struct tegra_dsi* slave; } ;


 int DSI_POWER_CONTROL ;
 int DSI_POWER_CONTROL_ENABLE ;
 int DSI_TRIGGER ;
 int tegra_dsi_readl (struct tegra_dsi*,int ) ;
 int tegra_dsi_writel (struct tegra_dsi*,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tegra_dsi_soft_reset(struct tegra_dsi *dsi)
{
 u32 value;

 value = tegra_dsi_readl(dsi, DSI_POWER_CONTROL);
 value &= ~DSI_POWER_CONTROL_ENABLE;
 tegra_dsi_writel(dsi, value, DSI_POWER_CONTROL);

 usleep_range(300, 1000);

 value = tegra_dsi_readl(dsi, DSI_POWER_CONTROL);
 value |= DSI_POWER_CONTROL_ENABLE;
 tegra_dsi_writel(dsi, value, DSI_POWER_CONTROL);

 usleep_range(300, 1000);

 value = tegra_dsi_readl(dsi, DSI_TRIGGER);
 if (value)
  tegra_dsi_writel(dsi, 0, DSI_TRIGGER);

 if (dsi->slave)
  tegra_dsi_soft_reset(dsi->slave);
}
