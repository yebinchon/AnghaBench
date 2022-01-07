
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int index; } ;
struct tegra_plane {TYPE_1__ base; struct tegra_dc* dc; } ;
struct tegra_dc {int dummy; } ;


 int COMMON_UPDATE ;
 int DC_CMD_STATE_CONTROL ;
 int WIN_A_UPDATE ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int tegra_dc_readl (struct tegra_dc*,int ) ;
 int tegra_dc_writel (struct tegra_dc*,int,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tegra_shared_plane_update(struct tegra_plane *plane)
{
 struct tegra_dc *dc = plane->dc;
 unsigned long timeout;
 u32 mask, value;

 mask = COMMON_UPDATE | WIN_A_UPDATE << plane->base.index;
 tegra_dc_writel(dc, mask, DC_CMD_STATE_CONTROL);

 timeout = jiffies + msecs_to_jiffies(1000);

 while (time_before(jiffies, timeout)) {
  value = tegra_dc_readl(dc, DC_CMD_STATE_CONTROL);
  if ((value & mask) == 0)
   break;

  usleep_range(100, 400);
 }
}
