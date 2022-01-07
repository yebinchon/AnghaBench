
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_devfreq {scalar_t__ regs; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void actmon_writel(struct tegra_devfreq *tegra, u32 val, u32 offset)
{
 writel_relaxed(val, tegra->regs + offset);
}
