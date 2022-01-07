
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_windowgroup {int usecount; int lock; int parent; int index; int rst; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;
 int pr_err (char*,int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void tegra_windowgroup_disable(struct tegra_windowgroup *wgrp)
{
 int err;

 mutex_lock(&wgrp->lock);

 if (wgrp->usecount == 1) {
  err = reset_control_assert(wgrp->rst);
  if (err < 0) {
   pr_err("failed to assert reset for window group %u\n",
          wgrp->index);
  }

  pm_runtime_put(wgrp->parent);
 }

 wgrp->usecount--;
 mutex_unlock(&wgrp->lock);
}
