
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor {int dummy; } ;


 int ETIMEDOUT ;
 int SOR_SUPER_STATE1 ;
 unsigned long SOR_SUPER_STATE_ATTACHED ;
 unsigned long SOR_SUPER_STATE_HEAD_MODE_AWAKE ;
 unsigned long SOR_SUPER_STATE_MODE_NORMAL ;
 int SOR_TEST ;
 unsigned long SOR_TEST_ATTACHED ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 unsigned long tegra_sor_readl (struct tegra_sor*,int ) ;
 int tegra_sor_super_update (struct tegra_sor*) ;
 int tegra_sor_writel (struct tegra_sor*,unsigned long,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_sor_attach(struct tegra_sor *sor)
{
 unsigned long value, timeout;


 value = tegra_sor_readl(sor, SOR_SUPER_STATE1);
 value |= SOR_SUPER_STATE_HEAD_MODE_AWAKE;
 value |= SOR_SUPER_STATE_MODE_NORMAL;
 tegra_sor_writel(sor, value, SOR_SUPER_STATE1);
 tegra_sor_super_update(sor);


 value = tegra_sor_readl(sor, SOR_SUPER_STATE1);
 value |= SOR_SUPER_STATE_ATTACHED;
 tegra_sor_writel(sor, value, SOR_SUPER_STATE1);
 tegra_sor_super_update(sor);

 timeout = jiffies + msecs_to_jiffies(250);

 while (time_before(jiffies, timeout)) {
  value = tegra_sor_readl(sor, SOR_TEST);
  if ((value & SOR_TEST_ATTACHED) != 0)
   return 0;

  usleep_range(25, 100);
 }

 return -ETIMEDOUT;
}
