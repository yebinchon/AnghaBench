
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_dev {scalar_t__ power_refcount; int power_lock; TYPE_2__* v3d; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

void
vc4_v3d_pm_put(struct vc4_dev *vc4)
{
 mutex_lock(&vc4->power_lock);
 if (--vc4->power_refcount == 0) {
  pm_runtime_mark_last_busy(&vc4->v3d->pdev->dev);
  pm_runtime_put_autosuspend(&vc4->v3d->pdev->dev);
 }
 mutex_unlock(&vc4->power_lock);
}
