
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dsi {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DSI_TRIGGER ;
 int DSI_TRIGGER_HOST ;
 int ETIMEDOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int tegra_dsi_readl (struct tegra_dsi*,int ) ;
 int tegra_dsi_writel (struct tegra_dsi*,int,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_dsi_transmit(struct tegra_dsi *dsi, unsigned long timeout)
{
 tegra_dsi_writel(dsi, DSI_TRIGGER_HOST, DSI_TRIGGER);

 timeout = jiffies + msecs_to_jiffies(timeout);

 while (time_before(jiffies, timeout)) {
  u32 value = tegra_dsi_readl(dsi, DSI_TRIGGER);
  if ((value & DSI_TRIGGER_HOST) == 0)
   return 0;

  usleep_range(1000, 2000);
 }

 DRM_DEBUG_KMS("timeout waiting for transmission to complete\n");
 return -ETIMEDOUT;
}
