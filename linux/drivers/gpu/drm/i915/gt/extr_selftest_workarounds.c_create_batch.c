
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int dummy; } ;
struct i915_gem_context {int vm; int i915; } ;
typedef struct i915_vma drm_i915_gem_object ;


 struct i915_vma* ERR_CAST (struct i915_vma*) ;
 struct i915_vma* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int PAGE_SIZE ;
 int PIN_USER ;
 int PTR_ERR (struct i915_vma*) ;
 struct i915_vma* i915_gem_object_create_internal (int ,int) ;
 int i915_gem_object_put (struct i915_vma*) ;
 struct i915_vma* i915_vma_instance (struct i915_vma*,int ,int *) ;
 int i915_vma_pin (struct i915_vma*,int ,int ,int ) ;

__attribute__((used)) static struct i915_vma *create_batch(struct i915_gem_context *ctx)
{
 struct drm_i915_gem_object *obj;
 struct i915_vma *vma;
 int err;

 obj = i915_gem_object_create_internal(ctx->i915, 16 * PAGE_SIZE);
 if (IS_ERR(obj))
  return ERR_CAST(obj);

 vma = i915_vma_instance(obj, ctx->vm, ((void*)0));
 if (IS_ERR(vma)) {
  err = PTR_ERR(vma);
  goto err_obj;
 }

 err = i915_vma_pin(vma, 0, 0, PIN_USER);
 if (err)
  goto err_obj;

 return vma;

err_obj:
 i915_gem_object_put(obj);
 return ERR_PTR(err);
}
