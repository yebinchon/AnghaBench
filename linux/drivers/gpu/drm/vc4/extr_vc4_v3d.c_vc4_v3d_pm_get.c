
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_dev {int power_lock; int power_refcount; TYPE_2__* v3d; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;

int
vc4_v3d_pm_get(struct vc4_dev *vc4)
{
 mutex_lock(&vc4->power_lock);
 if (vc4->power_refcount++ == 0) {
  int ret = pm_runtime_get_sync(&vc4->v3d->pdev->dev);

  if (ret < 0) {
   vc4->power_refcount--;
   mutex_unlock(&vc4->power_lock);
   return ret;
  }
 }
 mutex_unlock(&vc4->power_lock);

 return 0;
}
