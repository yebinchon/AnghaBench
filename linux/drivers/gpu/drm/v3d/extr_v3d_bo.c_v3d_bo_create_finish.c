
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pages_allocated; int num_allocated; } ;
struct v3d_dev {int bo_lock; TYPE_2__ bo_stats; int mm_lock; int mm; } ;
struct TYPE_3__ {int base; } ;
struct v3d_bo {int node; TYPE_1__ base; } ;
struct sg_table {int dummy; } ;
struct drm_gem_object {int size; int dev; } ;


 int GMP_GRANULARITY ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct sg_table*) ;
 struct sg_table* drm_gem_shmem_get_pages_sgt (int *) ;
 int drm_mm_insert_node_generic (int *,int *,int,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct v3d_bo* to_v3d_bo (struct drm_gem_object*) ;
 struct v3d_dev* to_v3d_dev (int ) ;
 int v3d_mmu_insert_ptes (struct v3d_bo*) ;

__attribute__((used)) static int
v3d_bo_create_finish(struct drm_gem_object *obj)
{
 struct v3d_dev *v3d = to_v3d_dev(obj->dev);
 struct v3d_bo *bo = to_v3d_bo(obj);
 struct sg_table *sgt;
 int ret;




 sgt = drm_gem_shmem_get_pages_sgt(&bo->base.base);
 if (IS_ERR(sgt))
  return PTR_ERR(sgt);

 spin_lock(&v3d->mm_lock);




 ret = drm_mm_insert_node_generic(&v3d->mm, &bo->node,
      obj->size >> PAGE_SHIFT,
      GMP_GRANULARITY >> PAGE_SHIFT, 0, 0);
 spin_unlock(&v3d->mm_lock);
 if (ret)
  return ret;


 mutex_lock(&v3d->bo_lock);
 v3d->bo_stats.num_allocated++;
 v3d->bo_stats.pages_allocated += obj->size >> PAGE_SHIFT;
 mutex_unlock(&v3d->bo_lock);

 v3d_mmu_insert_ptes(bo);

 return 0;
}
