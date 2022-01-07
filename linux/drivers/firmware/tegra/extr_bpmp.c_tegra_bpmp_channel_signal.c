
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp_channel {int completion; TYPE_1__* ob; } ;
struct TYPE_2__ {unsigned long flags; } ;


 unsigned long MSG_RING ;
 int complete (int *) ;

__attribute__((used)) static void tegra_bpmp_channel_signal(struct tegra_bpmp_channel *channel)
{
 unsigned long flags = channel->ob->flags;

 if ((flags & MSG_RING) == 0)
  return;

 complete(&channel->completion);
}
