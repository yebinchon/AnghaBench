
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
struct drm_gem_object {int resv; } ;
struct dma_fence {int dummy; } ;


 int dma_fence_put (struct dma_fence*) ;
 struct dma_fence* dma_resv_get_excl_rcu (int ) ;
 int dma_resv_get_fences_rcu (int ,int *,unsigned int*,struct dma_fence***) ;
 int drm_gem_fence_array_add (struct xarray*,struct dma_fence*) ;
 int kfree (struct dma_fence**) ;

int drm_gem_fence_array_add_implicit(struct xarray *fence_array,
         struct drm_gem_object *obj,
         bool write)
{
 int ret;
 struct dma_fence **fences;
 unsigned int i, fence_count;

 if (!write) {
  struct dma_fence *fence =
   dma_resv_get_excl_rcu(obj->resv);

  return drm_gem_fence_array_add(fence_array, fence);
 }

 ret = dma_resv_get_fences_rcu(obj->resv, ((void*)0),
      &fence_count, &fences);
 if (ret || !fence_count)
  return ret;

 for (i = 0; i < fence_count; i++) {
  ret = drm_gem_fence_array_add(fence_array, fences[i]);
  if (ret)
   break;
 }

 for (; i < fence_count; i++)
  dma_fence_put(fences[i]);
 kfree(fences);
 return ret;
}
