
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_vma {int dummy; } ;
typedef struct i915_vma u32 ;
struct TYPE_2__ {int vm; } ;
struct drm_i915_private {TYPE_1__ ggtt; int gt; } ;
typedef struct i915_vma drm_i915_gem_object ;


 struct i915_vma* ERR_CAST (struct i915_vma*) ;
 struct i915_vma* ERR_PTR (int) ;
 int I915_MAP_WB ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 struct i915_vma MI_BATCH_BUFFER_END ;
 int PAGE_SIZE ;
 int PIN_GLOBAL ;
 int PIN_USER ;
 int PTR_ERR (struct i915_vma*) ;
 int __i915_gem_object_flush_map (struct i915_vma*,int ,int) ;
 struct i915_vma* i915_gem_object_create_internal (struct drm_i915_private*,int ) ;
 struct i915_vma* i915_gem_object_pin_map (struct i915_vma*,int ) ;
 int i915_gem_object_put (struct i915_vma*) ;
 int i915_gem_object_unpin_map (struct i915_vma*) ;
 struct i915_vma* i915_vma_instance (struct i915_vma*,int *,int *) ;
 int i915_vma_pin (struct i915_vma*,int ,int ,int) ;
 int intel_gt_chipset_flush (int *) ;

__attribute__((used)) static struct i915_vma *empty_batch(struct drm_i915_private *i915)
{
 struct drm_i915_gem_object *obj;
 struct i915_vma *vma;
 u32 *cmd;
 int err;

 obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
 if (IS_ERR(obj))
  return ERR_CAST(obj);

 cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
 if (IS_ERR(cmd)) {
  err = PTR_ERR(cmd);
  goto err;
 }

 *cmd = MI_BATCH_BUFFER_END;

 __i915_gem_object_flush_map(obj, 0, 64);
 i915_gem_object_unpin_map(obj);

 intel_gt_chipset_flush(&i915->gt);

 vma = i915_vma_instance(obj, &i915->ggtt.vm, ((void*)0));
 if (IS_ERR(vma)) {
  err = PTR_ERR(vma);
  goto err;
 }

 err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_GLOBAL);
 if (err)
  goto err;

 return vma;

err:
 i915_gem_object_put(obj);
 return ERR_PTR(err);
}
