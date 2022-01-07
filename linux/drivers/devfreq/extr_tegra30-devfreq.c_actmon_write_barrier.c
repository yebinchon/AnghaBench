
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_devfreq {scalar_t__ regs; } ;


 scalar_t__ ACTMON_GLB_STATUS ;
 int readl (scalar_t__) ;

__attribute__((used)) static void actmon_write_barrier(struct tegra_devfreq *tegra)
{

 readl(tegra->regs + ACTMON_GLB_STATUS);
}
