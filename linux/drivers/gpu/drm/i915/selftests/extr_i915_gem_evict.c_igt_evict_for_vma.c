
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ggtt {int vm; } ;
struct drm_mm_node {int size; int start; } ;
struct drm_i915_private {struct i915_ggtt ggtt; } ;


 int ENOSPC ;
 int LIST_HEAD (int ) ;
 int cleanup_objects (struct drm_i915_private*,int *) ;
 int i915_gem_evict_for_node (int *,struct drm_mm_node*,int ) ;
 int objects ;
 int populate_ggtt (struct drm_i915_private*,int *) ;
 int pr_err (char*,int) ;
 int unpin_ggtt (struct drm_i915_private*) ;

__attribute__((used)) static int igt_evict_for_vma(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct i915_ggtt *ggtt = &i915->ggtt;
 struct drm_mm_node target = {
  .start = 0,
  .size = 4096,
 };
 LIST_HEAD(objects);
 int err;



 err = populate_ggtt(i915, &objects);
 if (err)
  goto cleanup;


 err = i915_gem_evict_for_node(&ggtt->vm, &target, 0);
 if (err != -ENOSPC) {
  pr_err("i915_gem_evict_for_node on a full GGTT returned err=%d\n",
         err);
  goto cleanup;
 }

 unpin_ggtt(i915);


 err = i915_gem_evict_for_node(&ggtt->vm, &target, 0);
 if (err) {
  pr_err("i915_gem_evict_for_node returned err=%d\n",
         err);
  goto cleanup;
 }

cleanup:
 cleanup_objects(i915, &objects);
 return err;
}
