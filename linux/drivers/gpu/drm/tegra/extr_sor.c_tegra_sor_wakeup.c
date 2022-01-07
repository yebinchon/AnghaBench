
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor {int dummy; } ;


 int ETIMEDOUT ;
 int SOR_TEST ;
 unsigned long SOR_TEST_HEAD_MODE_AWAKE ;
 unsigned long SOR_TEST_HEAD_MODE_MASK ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 unsigned long tegra_sor_readl (struct tegra_sor*,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_sor_wakeup(struct tegra_sor *sor)
{
 unsigned long value, timeout;

 timeout = jiffies + msecs_to_jiffies(250);


 while (time_before(jiffies, timeout)) {
  value = tegra_sor_readl(sor, SOR_TEST);
  value &= SOR_TEST_HEAD_MODE_MASK;

  if (value == SOR_TEST_HEAD_MODE_AWAKE)
   return 0;

  usleep_range(25, 100);
 }

 return -ETIMEDOUT;
}
