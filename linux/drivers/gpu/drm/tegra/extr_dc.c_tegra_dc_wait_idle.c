
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dc {int dev; } ;


 int ETIMEDOUT ;
 int dev_dbg (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 scalar_t__ tegra_dc_idle (struct tegra_dc*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_dc_wait_idle(struct tegra_dc *dc, unsigned long timeout)
{
 timeout = jiffies + msecs_to_jiffies(timeout);

 while (time_before(jiffies, timeout)) {
  if (tegra_dc_idle(dc))
   return 0;

  usleep_range(1000, 2000);
 }

 dev_dbg(dc->dev, "timeout waiting for DC to become idle\n");
 return -ETIMEDOUT;
}
