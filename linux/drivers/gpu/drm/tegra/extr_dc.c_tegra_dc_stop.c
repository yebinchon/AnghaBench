
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dc {int dummy; } ;


 int DC_CMD_DISPLAY_COMMAND ;
 int DISP_CTRL_MODE_MASK ;
 int tegra_dc_commit (struct tegra_dc*) ;
 int tegra_dc_readl (struct tegra_dc*,int ) ;
 int tegra_dc_writel (struct tegra_dc*,int ,int ) ;

__attribute__((used)) static void tegra_dc_stop(struct tegra_dc *dc)
{
 u32 value;


 value = tegra_dc_readl(dc, DC_CMD_DISPLAY_COMMAND);
 value &= ~DISP_CTRL_MODE_MASK;
 tegra_dc_writel(dc, value, DC_CMD_DISPLAY_COMMAND);

 tegra_dc_commit(dc);
}
