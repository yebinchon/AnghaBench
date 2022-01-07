
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_windowgroup {int dummy; } ;
struct tegra_display_hub {struct tegra_windowgroup* wgrps; TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int num_wgrps; } ;


 int tegra_windowgroup_disable (struct tegra_windowgroup*) ;

void tegra_display_hub_cleanup(struct tegra_display_hub *hub)
{
 unsigned int i;





 for (i = 0; i < hub->soc->num_wgrps; i++) {
  struct tegra_windowgroup *wgrp = &hub->wgrps[i];

  tegra_windowgroup_disable(wgrp);
 }
}
