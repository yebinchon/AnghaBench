
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dc {int dummy; } ;
struct reg_entry {int offset; int value; } ;


 int tegra_dc_writel (struct tegra_dc*,int ,int ) ;

__attribute__((used)) static void tegra_dc_write_regs(struct tegra_dc *dc,
    const struct reg_entry *table,
    unsigned int num)
{
 unsigned int i;

 for (i = 0; i < num; i++)
  tegra_dc_writel(dc, table[i].value, table[i].offset);
}
