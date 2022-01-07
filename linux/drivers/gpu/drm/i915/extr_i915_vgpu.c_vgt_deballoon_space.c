
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reserved; } ;
struct i915_ggtt {TYPE_1__ vm; } ;
struct drm_mm_node {int size; scalar_t__ start; } ;


 int DRM_DEBUG_DRIVER (char*,scalar_t__,scalar_t__,int) ;
 int drm_mm_node_allocated (struct drm_mm_node*) ;
 int drm_mm_remove_node (struct drm_mm_node*) ;

__attribute__((used)) static void vgt_deballoon_space(struct i915_ggtt *ggtt,
    struct drm_mm_node *node)
{
 if (!drm_mm_node_allocated(node))
  return;

 DRM_DEBUG_DRIVER("deballoon space: range [0x%llx - 0x%llx] %llu KiB.\n",
    node->start,
    node->start + node->size,
    node->size / 1024);

 ggtt->vm.reserved -= node->size;
 drm_mm_remove_node(node);
}
