
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef struct i915_vma drm_i915_gem_object ;


 int EINVAL ;
 int ENOSPC ;
 int I915_GTT_PAGE_SIZE ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int LIST_HEAD (int ) ;
 int PTR_ERR (struct i915_vma*) ;
 int cleanup_objects (struct drm_i915_private*,int *) ;
 struct i915_vma* i915_gem_object_create_internal (struct drm_i915_private*,int ) ;
 struct i915_vma* i915_gem_object_ggtt_pin (struct i915_vma*,int *,int ,int ,int ) ;
 int objects ;
 int populate_ggtt (struct drm_i915_private*,int *) ;
 int pr_err (char*,int) ;
 int quirk_add (struct i915_vma*,int *) ;

__attribute__((used)) static int igt_overcommit(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct drm_i915_gem_object *obj;
 struct i915_vma *vma;
 LIST_HEAD(objects);
 int err;





 err = populate_ggtt(i915, &objects);
 if (err)
  goto cleanup;

 obj = i915_gem_object_create_internal(i915, I915_GTT_PAGE_SIZE);
 if (IS_ERR(obj)) {
  err = PTR_ERR(obj);
  goto cleanup;
 }

 quirk_add(obj, &objects);

 vma = i915_gem_object_ggtt_pin(obj, ((void*)0), 0, 0, 0);
 if (!IS_ERR(vma) || PTR_ERR(vma) != -ENOSPC) {
  pr_err("Failed to evict+insert, i915_gem_object_ggtt_pin returned err=%d\n", (int)PTR_ERR(vma));
  err = -EINVAL;
  goto cleanup;
 }

cleanup:
 cleanup_objects(i915, &objects);
 return err;
}
