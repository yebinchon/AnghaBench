
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_mm_node {unsigned int start; scalar_t__ size; } ;
struct TYPE_4__ {unsigned int visible_vram_size; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;
struct TYPE_5__ {scalar_t__ mem_type; unsigned long num_pages; struct drm_mm_node* mm_node; } ;
struct TYPE_6__ {TYPE_2__ mem; int bdev; } ;
struct amdgpu_bo {TYPE_3__ tbo; } ;


 unsigned int PAGE_SHIFT ;
 scalar_t__ TTM_PL_VRAM ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;

__attribute__((used)) static inline bool amdgpu_bo_in_cpu_visible_vram(struct amdgpu_bo *bo)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 unsigned fpfn = adev->gmc.visible_vram_size >> PAGE_SHIFT;
 struct drm_mm_node *node = bo->tbo.mem.mm_node;
 unsigned long pages_left;

 if (bo->tbo.mem.mem_type != TTM_PL_VRAM)
  return 0;

 for (pages_left = bo->tbo.mem.num_pages; pages_left;
      pages_left -= node->size, node++)
  if (node->start < fpfn)
   return 1;

 return 0;
}
