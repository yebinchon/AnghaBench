
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dsi {struct tegra_dsi* slave; } ;


 int DSI_CONTROL ;
 int DSI_CONTROL_VIDEO_ENABLE ;
 int tegra_dsi_readl (struct tegra_dsi*,int ) ;
 int tegra_dsi_writel (struct tegra_dsi*,int ,int ) ;

__attribute__((used)) static void tegra_dsi_video_disable(struct tegra_dsi *dsi)
{
 u32 value;

 value = tegra_dsi_readl(dsi, DSI_CONTROL);
 value &= ~DSI_CONTROL_VIDEO_ENABLE;
 tegra_dsi_writel(dsi, value, DSI_CONTROL);

 if (dsi->slave)
  tegra_dsi_video_disable(dsi->slave);
}
