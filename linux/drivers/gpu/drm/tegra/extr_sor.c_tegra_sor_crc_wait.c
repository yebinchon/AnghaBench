
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_sor {int dummy; } ;


 int ETIMEDOUT ;
 int SOR_CRCA ;
 int SOR_CRCA_VALID ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int tegra_sor_readl (struct tegra_sor*,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_sor_crc_wait(struct tegra_sor *sor, unsigned long timeout)
{
 u32 value;

 timeout = jiffies + msecs_to_jiffies(timeout);

 while (time_before(jiffies, timeout)) {
  value = tegra_sor_readl(sor, SOR_CRCA);
  if (value & SOR_CRCA_VALID)
   return 0;

  usleep_range(100, 200);
 }

 return -ETIMEDOUT;
}
