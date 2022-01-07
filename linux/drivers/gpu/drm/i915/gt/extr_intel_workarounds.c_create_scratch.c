
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_vma {int dummy; } ;
struct i915_address_space {int i915; } ;
typedef struct i915_vma drm_i915_gem_object ;


 struct i915_vma* ERR_CAST (struct i915_vma*) ;
 struct i915_vma* ERR_PTR (int) ;
 int I915_CACHE_LLC ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int PAGE_SIZE ;
 int PIN_GLOBAL ;
 int PIN_USER ;
 int PTR_ERR (struct i915_vma*) ;
 struct i915_vma* i915_gem_object_create_internal (int ,unsigned int) ;
 int i915_gem_object_put (struct i915_vma*) ;
 int i915_gem_object_set_cache_coherency (struct i915_vma*,int ) ;
 struct i915_vma* i915_vma_instance (struct i915_vma*,struct i915_address_space*,int *) ;
 scalar_t__ i915_vma_is_ggtt (struct i915_vma*) ;
 int i915_vma_pin (struct i915_vma*,int ,int ,int ) ;
 unsigned int round_up (int,int ) ;

__attribute__((used)) static struct i915_vma *
create_scratch(struct i915_address_space *vm, int count)
{
 struct drm_i915_gem_object *obj;
 struct i915_vma *vma;
 unsigned int size;
 int err;

 size = round_up(count * sizeof(u32), PAGE_SIZE);
 obj = i915_gem_object_create_internal(vm->i915, size);
 if (IS_ERR(obj))
  return ERR_CAST(obj);

 i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);

 vma = i915_vma_instance(obj, vm, ((void*)0));
 if (IS_ERR(vma)) {
  err = PTR_ERR(vma);
  goto err_obj;
 }

 err = i915_vma_pin(vma, 0, 0,
      i915_vma_is_ggtt(vma) ? PIN_GLOBAL : PIN_USER);
 if (err)
  goto err_obj;

 return vma;

err_obj:
 i915_gem_object_put(obj);
 return ERR_PTR(err);
}
