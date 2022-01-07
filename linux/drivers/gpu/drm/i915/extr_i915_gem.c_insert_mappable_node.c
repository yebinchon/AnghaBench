
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mm; } ;
struct i915_ggtt {int mappable_end; TYPE_1__ vm; } ;
struct drm_mm_node {int dummy; } ;


 int DRM_MM_INSERT_LOW ;
 int I915_COLOR_UNEVICTABLE ;
 int drm_mm_insert_node_in_range (int *,struct drm_mm_node*,int ,int ,int ,int ,int ,int ) ;
 int memset (struct drm_mm_node*,int ,int) ;

__attribute__((used)) static int
insert_mappable_node(struct i915_ggtt *ggtt,
                     struct drm_mm_node *node, u32 size)
{
 memset(node, 0, sizeof(*node));
 return drm_mm_insert_node_in_range(&ggtt->vm.mm, node,
        size, 0, I915_COLOR_UNEVICTABLE,
        0, ggtt->mappable_end,
        DRM_MM_INSERT_LOW);
}
