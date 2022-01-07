
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pages_allocated; int num_allocated; } ;
struct v3d_dev {int mm_lock; int bo_lock; TYPE_1__ bo_stats; } ;
struct TYPE_4__ {int pages_mark_dirty_on_put; } ;
struct v3d_bo {TYPE_2__ base; int node; } ;
struct drm_gem_object {int size; int dev; } ;


 int PAGE_SHIFT ;
 int drm_gem_shmem_free_object (struct drm_gem_object*) ;
 int drm_mm_remove_node (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct v3d_bo* to_v3d_bo (struct drm_gem_object*) ;
 struct v3d_dev* to_v3d_dev (int ) ;
 int v3d_mmu_remove_ptes (struct v3d_bo*) ;

void v3d_free_object(struct drm_gem_object *obj)
{
 struct v3d_dev *v3d = to_v3d_dev(obj->dev);
 struct v3d_bo *bo = to_v3d_bo(obj);

 v3d_mmu_remove_ptes(bo);

 mutex_lock(&v3d->bo_lock);
 v3d->bo_stats.num_allocated--;
 v3d->bo_stats.pages_allocated -= obj->size >> PAGE_SHIFT;
 mutex_unlock(&v3d->bo_lock);

 spin_lock(&v3d->mm_lock);
 drm_mm_remove_node(&bo->node);
 spin_unlock(&v3d->mm_lock);


 bo->base.pages_mark_dirty_on_put = 1;

 drm_gem_shmem_free_object(obj);
}
