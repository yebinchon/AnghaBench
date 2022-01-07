
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ggtt {int uc_fw; } ;


 scalar_t__ drm_mm_node_allocated (int *) ;
 int drm_mm_remove_node (int *) ;

__attribute__((used)) static void ggtt_release_guc_top(struct i915_ggtt *ggtt)
{
 if (drm_mm_node_allocated(&ggtt->uc_fw))
  drm_mm_remove_node(&ggtt->uc_fw);
}
