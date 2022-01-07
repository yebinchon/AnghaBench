
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dc {int dummy; } ;


 int DC_CMD_STATE_ACCESS ;
 int READ_MUX ;
 int tegra_dc_readl (struct tegra_dc*,unsigned long) ;
 int tegra_dc_writel (struct tegra_dc*,int ,int ) ;

__attribute__((used)) static u32 tegra_dc_readl_active(struct tegra_dc *dc, unsigned long offset)
{
 u32 value;

 tegra_dc_writel(dc, READ_MUX, DC_CMD_STATE_ACCESS);
 value = tegra_dc_readl(dc, offset);
 tegra_dc_writel(dc, 0, DC_CMD_STATE_ACCESS);

 return value;
}
