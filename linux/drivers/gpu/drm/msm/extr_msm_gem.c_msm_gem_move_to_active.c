
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int active_list; } ;
struct msm_gem_object {scalar_t__ madv; int mm_list; struct msm_gpu* gpu; } ;
struct drm_gem_object {int resv; } ;
struct dma_fence {int dummy; } ;


 scalar_t__ MSM_MADV_WILLNEED ;
 int WARN_ON (int) ;
 int dma_resv_add_excl_fence (int ,struct dma_fence*) ;
 int dma_resv_add_shared_fence (int ,struct dma_fence*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

void msm_gem_move_to_active(struct drm_gem_object *obj,
  struct msm_gpu *gpu, bool exclusive, struct dma_fence *fence)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 WARN_ON(msm_obj->madv != MSM_MADV_WILLNEED);
 msm_obj->gpu = gpu;
 if (exclusive)
  dma_resv_add_excl_fence(obj->resv, fence);
 else
  dma_resv_add_shared_fence(obj->resv, fence);
 list_del_init(&msm_obj->mm_list);
 list_add_tail(&msm_obj->mm_list, &gpu->active_list);
}
