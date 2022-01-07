
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_windowgroup {scalar_t__ usecount; int lock; int rst; int parent; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int tegra_windowgroup_enable(struct tegra_windowgroup *wgrp)
{
 mutex_lock(&wgrp->lock);

 if (wgrp->usecount == 0) {
  pm_runtime_get_sync(wgrp->parent);
  reset_control_deassert(wgrp->rst);
 }

 wgrp->usecount++;
 mutex_unlock(&wgrp->lock);

 return 0;
}
