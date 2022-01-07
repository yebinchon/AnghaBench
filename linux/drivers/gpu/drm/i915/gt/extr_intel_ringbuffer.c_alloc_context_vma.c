
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_engine_cs {void* default_state; TYPE_2__* gt; int context_size; struct drm_i915_private* i915; } ;
typedef void i915_vma ;
struct drm_i915_private {int dummy; } ;
typedef void drm_i915_gem_object ;
struct TYPE_4__ {TYPE_1__* ggtt; } ;
struct TYPE_3__ {int vm; } ;


 void* ERR_CAST (void*) ;
 void* ERR_PTR (int) ;
 int I915_CACHE_L3_LLC ;
 int I915_MAP_WB ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int PTR_ERR (void*) ;
 void* i915_gem_object_create_shmem (struct drm_i915_private*,int ) ;
 int i915_gem_object_flush_map (void*) ;
 void* i915_gem_object_pin_map (void*,int ) ;
 int i915_gem_object_put (void*) ;
 int i915_gem_object_set_cache_coherency (void*,int ) ;
 int i915_gem_object_unpin_map (void*) ;
 void* i915_vma_instance (void*,int *,int *) ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static struct i915_vma *
alloc_context_vma(struct intel_engine_cs *engine)
{
 struct drm_i915_private *i915 = engine->i915;
 struct drm_i915_gem_object *obj;
 struct i915_vma *vma;
 int err;

 obj = i915_gem_object_create_shmem(i915, engine->context_size);
 if (IS_ERR(obj))
  return ERR_CAST(obj);
 if (IS_IVYBRIDGE(i915))
  i915_gem_object_set_cache_coherency(obj, I915_CACHE_L3_LLC);

 if (engine->default_state) {
  void *defaults, *vaddr;

  vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
  if (IS_ERR(vaddr)) {
   err = PTR_ERR(vaddr);
   goto err_obj;
  }

  defaults = i915_gem_object_pin_map(engine->default_state,
         I915_MAP_WB);
  if (IS_ERR(defaults)) {
   err = PTR_ERR(defaults);
   goto err_map;
  }

  memcpy(vaddr, defaults, engine->context_size);
  i915_gem_object_unpin_map(engine->default_state);

  i915_gem_object_flush_map(obj);
  i915_gem_object_unpin_map(obj);
 }

 vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, ((void*)0));
 if (IS_ERR(vma)) {
  err = PTR_ERR(vma);
  goto err_obj;
 }

 return vma;

err_map:
 i915_gem_object_unpin_map(obj);
err_obj:
 i915_gem_object_put(obj);
 return ERR_PTR(err);
}
