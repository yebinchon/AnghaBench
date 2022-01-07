
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ u64 ;
struct drm_mm_node {scalar_t__ start; scalar_t__ size; } ;
struct TYPE_2__ {scalar_t__ visible_vram_size; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 scalar_t__ PAGE_SHIFT ;

__attribute__((used)) static u64 amdgpu_vram_mgr_vis_size(struct amdgpu_device *adev,
        struct drm_mm_node *node)
{
 uint64_t start = node->start << PAGE_SHIFT;
 uint64_t end = (node->size + node->start) << PAGE_SHIFT;

 if (start >= adev->gmc.visible_vram_size)
  return 0;

 return (end > adev->gmc.visible_vram_size ?
  adev->gmc.visible_vram_size : end) - start;
}
