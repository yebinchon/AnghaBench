
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_vma {int dummy; } ;
struct TYPE_3__ {int * color_adjust; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;
struct i915_ggtt {TYPE_2__ vm; } ;
struct drm_mm_node {int start; int size; int color; } ;
struct drm_i915_private {struct i915_ggtt ggtt; } ;
typedef struct i915_vma drm_i915_gem_object ;


 int EINVAL ;
 int I915_CACHE_L3_LLC ;
 int I915_CACHE_LLC ;
 int I915_GTT_PAGE_SIZE ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int LIST_HEAD (int ) ;
 unsigned long PIN_OFFSET_FIXED ;
 int PTR_ERR (struct i915_vma*) ;
 int cleanup_objects (struct drm_i915_private*,int *) ;
 int i915_gem_evict_for_node (TYPE_2__*,struct drm_mm_node*,int ) ;
 struct i915_vma* i915_gem_object_create_internal (struct drm_i915_private*,int) ;
 struct i915_vma* i915_gem_object_ggtt_pin (struct i915_vma*,int *,int ,int ,int) ;
 int i915_gem_object_set_cache_coherency (struct i915_vma*,int ) ;
 int i915_vma_unpin (struct i915_vma*) ;
 int * mock_color_adjust ;
 int objects ;
 int pr_err (char*,...) ;
 int quirk_add (struct i915_vma*,int *) ;
 int unpin_ggtt (struct drm_i915_private*) ;

__attribute__((used)) static int igt_evict_for_cache_color(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct i915_ggtt *ggtt = &i915->ggtt;
 const unsigned long flags = PIN_OFFSET_FIXED;
 struct drm_mm_node target = {
  .start = I915_GTT_PAGE_SIZE * 2,
  .size = I915_GTT_PAGE_SIZE,
  .color = I915_CACHE_LLC,
 };
 struct drm_i915_gem_object *obj;
 struct i915_vma *vma;
 LIST_HEAD(objects);
 int err;






 ggtt->vm.mm.color_adjust = mock_color_adjust;

 obj = i915_gem_object_create_internal(i915, I915_GTT_PAGE_SIZE);
 if (IS_ERR(obj)) {
  err = PTR_ERR(obj);
  goto cleanup;
 }
 i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
 quirk_add(obj, &objects);

 vma = i915_gem_object_ggtt_pin(obj, ((void*)0), 0, 0,
           I915_GTT_PAGE_SIZE | flags);
 if (IS_ERR(vma)) {
  pr_err("[0]i915_gem_object_ggtt_pin failed\n");
  err = PTR_ERR(vma);
  goto cleanup;
 }

 obj = i915_gem_object_create_internal(i915, I915_GTT_PAGE_SIZE);
 if (IS_ERR(obj)) {
  err = PTR_ERR(obj);
  goto cleanup;
 }
 i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
 quirk_add(obj, &objects);


 vma = i915_gem_object_ggtt_pin(obj, ((void*)0), 0, 0,
           (I915_GTT_PAGE_SIZE * 2) | flags);
 if (IS_ERR(vma)) {
  pr_err("[1]i915_gem_object_ggtt_pin failed\n");
  err = PTR_ERR(vma);
  goto cleanup;
 }

 i915_vma_unpin(vma);


 err = i915_gem_evict_for_node(&ggtt->vm, &target, 0);
 if (err) {
  pr_err("[0]i915_gem_evict_for_node returned err=%d\n", err);
  goto cleanup;
 }




 target.color = I915_CACHE_L3_LLC;

 err = i915_gem_evict_for_node(&ggtt->vm, &target, 0);
 if (!err) {
  pr_err("[1]i915_gem_evict_for_node returned err=%d\n", err);
  err = -EINVAL;
  goto cleanup;
 }

 err = 0;

cleanup:
 unpin_ggtt(i915);
 cleanup_objects(i915, &objects);
 ggtt->vm.mm.color_adjust = ((void*)0);
 return err;
}
