
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dc {int dummy; } ;


 int DC_CMD_DISPLAY_COMMAND ;
 int DISP_CTRL_MODE_MASK ;
 int tegra_dc_readl_active (struct tegra_dc*,int ) ;

__attribute__((used)) static bool tegra_dc_idle(struct tegra_dc *dc)
{
 u32 value;

 value = tegra_dc_readl_active(dc, DC_CMD_DISPLAY_COMMAND);

 return (value & DISP_CTRL_MODE_MASK) == 0;
}
