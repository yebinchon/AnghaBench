
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {int dummy; } ;
struct i915_vma {int size; int obj; } ;
struct i915_gem_context {int dummy; } ;


 int PAGE_SHIFT ;
 int i915_gem_object_lock (int ) ;
 int i915_gem_object_set_to_gtt_domain (int ,int) ;
 int i915_gem_object_unlock (int ) ;
 int igt_gpu_fill_dw (struct i915_vma*,struct i915_gem_context*,struct intel_engine_cs*,int,int,int) ;

__attribute__((used)) static int gpu_write(struct i915_vma *vma,
       struct i915_gem_context *ctx,
       struct intel_engine_cs *engine,
       u32 dw,
       u32 val)
{
 int err;

 i915_gem_object_lock(vma->obj);
 err = i915_gem_object_set_to_gtt_domain(vma->obj, 1);
 i915_gem_object_unlock(vma->obj);
 if (err)
  return err;

 return igt_gpu_fill_dw(vma, ctx, engine, dw * sizeof(u32),
          vma->size >> PAGE_SHIFT, val);
}
