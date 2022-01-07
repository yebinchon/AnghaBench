
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_mipi {int dummy; } ;


 int ETIMEDOUT ;
 int MIPI_CAL_STATUS ;
 int MIPI_CAL_STATUS_ACTIVE ;
 int MIPI_CAL_STATUS_DONE ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int tegra_mipi_readl (struct tegra_mipi*,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_mipi_wait(struct tegra_mipi *mipi)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(250);
 u32 value;

 while (time_before(jiffies, timeout)) {
  value = tegra_mipi_readl(mipi, MIPI_CAL_STATUS);
  if ((value & MIPI_CAL_STATUS_ACTIVE) == 0 &&
      (value & MIPI_CAL_STATUS_DONE) != 0)
   return 0;

  usleep_range(10, 50);
 }

 return -ETIMEDOUT;
}
