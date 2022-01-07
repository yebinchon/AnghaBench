
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_windowgroup_soc {scalar_t__ dc; scalar_t__ num_windows; } ;
struct tegra_dc {scalar_t__ pipe; TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int num_wgrps; struct tegra_windowgroup_soc* wgrps; } ;



__attribute__((used)) static bool tegra_dc_has_window_groups(struct tegra_dc *dc)
{
 unsigned int i;

 if (!dc->soc->wgrps)
  return 1;

 for (i = 0; i < dc->soc->num_wgrps; i++) {
  const struct tegra_windowgroup_soc *wgrp = &dc->soc->wgrps[i];

  if (wgrp->dc == dc->pipe && wgrp->num_windows > 0)
   return 1;
 }

 return 0;
}
