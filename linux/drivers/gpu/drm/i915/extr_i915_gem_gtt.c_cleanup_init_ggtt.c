
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ggtt {int error_capture; } ;


 int drm_mm_remove_node (int *) ;
 int ggtt_release_guc_top (struct i915_ggtt*) ;

__attribute__((used)) static void cleanup_init_ggtt(struct i915_ggtt *ggtt)
{
 ggtt_release_guc_top(ggtt);
 drm_mm_remove_node(&ggtt->error_capture);
}
