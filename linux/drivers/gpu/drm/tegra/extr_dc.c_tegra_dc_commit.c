
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dc {int dummy; } ;


 int DC_CMD_STATE_CONTROL ;
 int GENERAL_ACT_REQ ;
 int tegra_dc_writel (struct tegra_dc*,int,int ) ;

void tegra_dc_commit(struct tegra_dc *dc)
{
 tegra_dc_writel(dc, GENERAL_ACT_REQ << 8, DC_CMD_STATE_CONTROL);
 tegra_dc_writel(dc, GENERAL_ACT_REQ, DC_CMD_STATE_CONTROL);
}
