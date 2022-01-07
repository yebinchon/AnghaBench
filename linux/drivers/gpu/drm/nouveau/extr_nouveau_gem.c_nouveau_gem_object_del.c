
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_drm {TYPE_1__* dev; } ;
struct TYPE_4__ {int sg; int bdev; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct drm_gem_object {scalar_t__ import_attach; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* dev; } ;


 int EACCES ;
 scalar_t__ WARN_ON (int) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,int ) ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int ttm_bo_put (TYPE_2__*) ;

void
nouveau_gem_object_del(struct drm_gem_object *gem)
{
 struct nouveau_bo *nvbo = nouveau_gem_object(gem);
 struct nouveau_drm *drm = nouveau_bdev(nvbo->bo.bdev);
 struct device *dev = drm->dev->dev;
 int ret;

 ret = pm_runtime_get_sync(dev);
 if (WARN_ON(ret < 0 && ret != -EACCES))
  return;

 if (gem->import_attach)
  drm_prime_gem_destroy(gem, nvbo->bo.sg);

 ttm_bo_put(&nvbo->bo);

 pm_runtime_mark_last_busy(dev);
 pm_runtime_put_autosuspend(dev);
}
