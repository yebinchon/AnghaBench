
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_dev {int power_lock; TYPE_2__* v3d; scalar_t__ power_refcount; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DRM_INFO (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync_suspend (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_irq_reset (struct drm_device*) ;
 int vc4_queue_hangcheck (struct drm_device*) ;

__attribute__((used)) static void
vc4_reset(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 DRM_INFO("Resetting GPU.\n");

 mutex_lock(&vc4->power_lock);
 if (vc4->power_refcount) {



  pm_runtime_put_sync_suspend(&vc4->v3d->pdev->dev);
  pm_runtime_get_sync(&vc4->v3d->pdev->dev);
 }
 mutex_unlock(&vc4->power_lock);

 vc4_irq_reset(dev);





 vc4_queue_hangcheck(dev);
}
