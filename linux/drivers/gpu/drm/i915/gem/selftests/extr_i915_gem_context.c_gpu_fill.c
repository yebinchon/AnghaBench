
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_engine_cs {TYPE_2__* gt; } ;
struct i915_vma {int dummy; } ;
struct i915_gem_context {int vm; } ;
struct i915_address_space {scalar_t__ total; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct drm_i915_gem_object {TYPE_3__ base; } ;
struct TYPE_5__ {TYPE_1__* ggtt; } ;
struct TYPE_4__ {struct i915_address_space vm; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 unsigned int PAGE_SHIFT ;
 int PIN_HIGH ;
 int PIN_USER ;
 int PTR_ERR (struct i915_vma*) ;
 int i915_gem_object_lock (struct drm_i915_gem_object*) ;
 int i915_gem_object_set_to_gtt_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 struct i915_vma* i915_vma_instance (struct drm_i915_gem_object*,struct i915_address_space*,int *) ;
 int i915_vma_pin (struct i915_vma*,int ,int ,int) ;
 int i915_vma_unpin (struct i915_vma*) ;
 int igt_gpu_fill_dw (struct i915_vma*,struct i915_gem_context*,struct intel_engine_cs*,unsigned int,unsigned int,unsigned int) ;
 int intel_engine_can_store_dword (struct intel_engine_cs*) ;
 unsigned int real_page_count (struct drm_i915_gem_object*) ;

__attribute__((used)) static int gpu_fill(struct drm_i915_gem_object *obj,
      struct i915_gem_context *ctx,
      struct intel_engine_cs *engine,
      unsigned int dw)
{
 struct i915_address_space *vm = ctx->vm ?: &engine->gt->ggtt->vm;
 struct i915_vma *vma;
 int err;

 GEM_BUG_ON(obj->base.size > vm->total);
 GEM_BUG_ON(!intel_engine_can_store_dword(engine));

 vma = i915_vma_instance(obj, vm, ((void*)0));
 if (IS_ERR(vma))
  return PTR_ERR(vma);

 i915_gem_object_lock(obj);
 err = i915_gem_object_set_to_gtt_domain(obj, 1);
 i915_gem_object_unlock(obj);
 if (err)
  return err;

 err = i915_vma_pin(vma, 0, 0, PIN_HIGH | PIN_USER);
 if (err)
  return err;
 err = igt_gpu_fill_dw(vma,
         ctx,
         engine,
         (dw * real_page_count(obj)) << PAGE_SHIFT |
         (dw * sizeof(u32)),
         real_page_count(obj),
         dw);
 i915_vma_unpin(vma);

 return err;
}
