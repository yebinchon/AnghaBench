
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_sor {int dummy; } ;


 int ETIMEDOUT ;
 int SOR_PWR ;
 int SOR_PWR_NORMAL_STATE_PU ;
 int SOR_PWR_TRIGGER ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int tegra_sor_readl (struct tegra_sor*,int ) ;
 int tegra_sor_writel (struct tegra_sor*,int,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_sor_power_up(struct tegra_sor *sor, unsigned long timeout)
{
 u32 value;

 value = tegra_sor_readl(sor, SOR_PWR);
 value |= SOR_PWR_TRIGGER | SOR_PWR_NORMAL_STATE_PU;
 tegra_sor_writel(sor, value, SOR_PWR);

 timeout = jiffies + msecs_to_jiffies(timeout);

 while (time_before(jiffies, timeout)) {
  value = tegra_sor_readl(sor, SOR_PWR);
  if ((value & SOR_PWR_TRIGGER) == 0)
   return 0;

  usleep_range(25, 100);
 }

 return -ETIMEDOUT;
}
