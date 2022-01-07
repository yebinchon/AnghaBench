
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; } ;
struct TYPE_8__ {int madv_list; TYPE_2__ base; } ;
struct panfrost_gem_object {TYPE_3__ base; TYPE_4__* sgts; } ;
struct panfrost_device {int shrinker_lock; int dev; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_9__ {int nents; scalar_t__ sgl; } ;
struct TYPE_6__ {struct panfrost_device* dev_private; } ;


 int DMA_BIDIRECTIONAL ;
 int SZ_2M ;
 int dma_unmap_sg (int ,scalar_t__,int ,int ) ;
 int drm_gem_shmem_free_object (struct drm_gem_object*) ;
 int kfree (TYPE_4__*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sg_free_table (TYPE_4__*) ;
 struct panfrost_gem_object* to_panfrost_bo (struct drm_gem_object*) ;

__attribute__((used)) static void panfrost_gem_free_object(struct drm_gem_object *obj)
{
 struct panfrost_gem_object *bo = to_panfrost_bo(obj);
 struct panfrost_device *pfdev = obj->dev->dev_private;

 if (bo->sgts) {
  int i;
  int n_sgt = bo->base.base.size / SZ_2M;

  for (i = 0; i < n_sgt; i++) {
   if (bo->sgts[i].sgl) {
    dma_unmap_sg(pfdev->dev, bo->sgts[i].sgl,
          bo->sgts[i].nents, DMA_BIDIRECTIONAL);
    sg_free_table(&bo->sgts[i]);
   }
  }
  kfree(bo->sgts);
 }

 mutex_lock(&pfdev->shrinker_lock);
 if (!list_empty(&bo->base.madv_list))
  list_del(&bo->base.madv_list);
 mutex_unlock(&pfdev->shrinker_lock);

 drm_gem_shmem_free_object(obj);
}
