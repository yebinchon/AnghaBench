
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uc_fw {int dummy; } ;
struct drm_mm_node {scalar_t__ start; scalar_t__ size; int allocated; } ;
struct i915_ggtt {struct drm_mm_node uc_fw; } ;


 int GEM_BUG_ON (int) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static u32 uc_fw_ggtt_offset(struct intel_uc_fw *uc_fw, struct i915_ggtt *ggtt)
{
 struct drm_mm_node *node = &ggtt->uc_fw;

 GEM_BUG_ON(!node->allocated);
 GEM_BUG_ON(upper_32_bits(node->start));
 GEM_BUG_ON(upper_32_bits(node->start + node->size - 1));

 return lower_32_bits(node->start);
}
