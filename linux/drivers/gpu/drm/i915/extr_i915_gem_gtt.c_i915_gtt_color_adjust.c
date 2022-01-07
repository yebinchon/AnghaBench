
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_mm_node {unsigned long color; scalar_t__ allocated; } ;


 scalar_t__ I915_GTT_PAGE_SIZE ;
 struct drm_mm_node* list_next_entry (struct drm_mm_node const*,int ) ;
 int node_list ;

__attribute__((used)) static void i915_gtt_color_adjust(const struct drm_mm_node *node,
      unsigned long color,
      u64 *start,
      u64 *end)
{
 if (node->allocated && node->color != color)
  *start += I915_GTT_PAGE_SIZE;






 node = list_next_entry(node, node_list);
 if (node->color != color)
  *end -= I915_GTT_PAGE_SIZE;
}
