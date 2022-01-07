
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dsi {int dummy; } ;


 int DSI_GANGED_MODE_CONTROL ;
 int DSI_GANGED_MODE_SIZE ;
 int DSI_GANGED_MODE_START ;
 int tegra_dsi_writel (struct tegra_dsi*,int ,int ) ;

__attribute__((used)) static void tegra_dsi_ganged_disable(struct tegra_dsi *dsi)
{
 tegra_dsi_writel(dsi, 0, DSI_GANGED_MODE_START);
 tegra_dsi_writel(dsi, 0, DSI_GANGED_MODE_SIZE);
 tegra_dsi_writel(dsi, 0, DSI_GANGED_MODE_CONTROL);
}
