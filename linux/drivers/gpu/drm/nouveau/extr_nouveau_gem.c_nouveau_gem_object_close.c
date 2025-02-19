
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ oclass; } ;
struct TYPE_8__ {TYPE_2__ object; } ;
struct nouveau_vmm {TYPE_3__ vmm; int cli; } ;
struct nouveau_vma {scalar_t__ refs; } ;
struct nouveau_drm {TYPE_1__* dev; } ;
struct nouveau_cli {struct nouveau_vmm vmm; struct nouveau_vmm svm; } ;
struct TYPE_9__ {int bdev; } ;
struct nouveau_bo {TYPE_4__ bo; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device* dev; } ;


 int EACCES ;
 scalar_t__ NVIF_CLASS_VMM_NV50 ;
 int WARN_ON (int) ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;
 int nouveau_gem_object_unmap (struct nouveau_bo*,struct nouveau_vma*) ;
 struct nouveau_vma* nouveau_vma_find (struct nouveau_bo*,struct nouveau_vmm*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int ttm_bo_reserve (TYPE_4__*,int,int,int *) ;
 int ttm_bo_unreserve (TYPE_4__*) ;

void
nouveau_gem_object_close(struct drm_gem_object *gem, struct drm_file *file_priv)
{
 struct nouveau_cli *cli = nouveau_cli(file_priv);
 struct nouveau_bo *nvbo = nouveau_gem_object(gem);
 struct nouveau_drm *drm = nouveau_bdev(nvbo->bo.bdev);
 struct device *dev = drm->dev->dev;
 struct nouveau_vmm *vmm = cli->svm.cli ? &cli->svm : & cli->vmm;
 struct nouveau_vma *vma;
 int ret;

 if (vmm->vmm.object.oclass < NVIF_CLASS_VMM_NV50)
  return;

 ret = ttm_bo_reserve(&nvbo->bo, 0, 0, ((void*)0));
 if (ret)
  return;

 vma = nouveau_vma_find(nvbo, vmm);
 if (vma) {
  if (--vma->refs == 0) {
   ret = pm_runtime_get_sync(dev);
   if (!WARN_ON(ret < 0 && ret != -EACCES)) {
    nouveau_gem_object_unmap(nvbo, vma);
    pm_runtime_mark_last_busy(dev);
    pm_runtime_put_autosuspend(dev);
   }
  }
 }
 ttm_bo_unreserve(&nvbo->bo);
}
