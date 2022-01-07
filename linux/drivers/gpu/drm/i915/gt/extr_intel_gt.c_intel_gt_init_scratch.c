
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gt {int scratch; TYPE_1__* ggtt; struct drm_i915_private* i915; } ;
struct i915_vma {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef struct i915_vma drm_i915_gem_object ;
struct TYPE_2__ {int vm; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int PIN_GLOBAL ;
 int PIN_HIGH ;
 int PTR_ERR (struct i915_vma*) ;
 struct i915_vma* i915_gem_object_create_internal (struct drm_i915_private*,unsigned int) ;
 struct i915_vma* i915_gem_object_create_stolen (struct drm_i915_private*,unsigned int) ;
 int i915_gem_object_put (struct i915_vma*) ;
 struct i915_vma* i915_vma_instance (struct i915_vma*,int *,int *) ;
 int i915_vma_make_unshrinkable (struct i915_vma*) ;
 int i915_vma_pin (struct i915_vma*,int ,int ,int) ;

int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
{
 struct drm_i915_private *i915 = gt->i915;
 struct drm_i915_gem_object *obj;
 struct i915_vma *vma;
 int ret;

 obj = i915_gem_object_create_stolen(i915, size);
 if (!obj)
  obj = i915_gem_object_create_internal(i915, size);
 if (IS_ERR(obj)) {
  DRM_ERROR("Failed to allocate scratch page\n");
  return PTR_ERR(obj);
 }

 vma = i915_vma_instance(obj, &gt->ggtt->vm, ((void*)0));
 if (IS_ERR(vma)) {
  ret = PTR_ERR(vma);
  goto err_unref;
 }

 ret = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 if (ret)
  goto err_unref;

 gt->scratch = i915_vma_make_unshrinkable(vma);

 return 0;

err_unref:
 i915_gem_object_put(obj);
 return ret;
}
