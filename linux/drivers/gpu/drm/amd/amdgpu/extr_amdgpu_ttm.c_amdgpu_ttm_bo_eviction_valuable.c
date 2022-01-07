
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_place {unsigned long fpfn; unsigned long lpfn; } ;
struct TYPE_5__ {unsigned long num_pages; int mem_type; struct drm_mm_node* mm_node; } ;
struct TYPE_4__ {int resv; } ;
struct ttm_buffer_object {scalar_t__ type; TYPE_2__ mem; TYPE_1__ base; } ;
struct drm_mm_node {unsigned long start; unsigned long size; } ;
struct dma_resv_list {int shared_count; int * shared; } ;
struct dma_fence {int dummy; } ;
struct TYPE_6__ {int mm; } ;




 scalar_t__ amdkfd_fence_check_mm (struct dma_fence*,int ) ;
 TYPE_3__* current ;
 struct dma_resv_list* dma_resv_get_list (int ) ;
 int dma_resv_held (int ) ;
 int dma_resv_test_signaled_rcu (int ,int) ;
 struct dma_fence* rcu_dereference_protected (int ,int ) ;
 int ttm_bo_eviction_valuable (struct ttm_buffer_object*,struct ttm_place const*) ;
 scalar_t__ ttm_bo_type_kernel ;

__attribute__((used)) static bool amdgpu_ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
         const struct ttm_place *place)
{
 unsigned long num_pages = bo->mem.num_pages;
 struct drm_mm_node *node = bo->mem.mm_node;
 struct dma_resv_list *flist;
 struct dma_fence *f;
 int i;




 if (bo->type == ttm_bo_type_kernel &&
     !dma_resv_test_signaled_rcu(bo->base.resv, 1))
  return 0;





 flist = dma_resv_get_list(bo->base.resv);
 if (flist) {
  for (i = 0; i < flist->shared_count; ++i) {
   f = rcu_dereference_protected(flist->shared[i],
    dma_resv_held(bo->base.resv));
   if (amdkfd_fence_check_mm(f, current->mm))
    return 0;
  }
 }

 switch (bo->mem.mem_type) {
 case 129:
  return 1;

 case 128:

  while (num_pages) {
   if (place->fpfn < (node->start + node->size) &&
       !(place->lpfn && place->lpfn <= node->start))
    return 1;

   num_pages -= node->size;
   ++node;
  }
  return 0;

 default:
  break;
 }

 return ttm_bo_eviction_valuable(bo, place);
}
