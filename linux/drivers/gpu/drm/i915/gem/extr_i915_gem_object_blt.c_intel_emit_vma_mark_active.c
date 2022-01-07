
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int private; int obj; } ;
struct i915_request {int dummy; } ;


 int i915_request_await_object (struct i915_request*,int ,int) ;
 int i915_vma_lock (struct i915_vma*) ;
 int i915_vma_move_to_active (struct i915_vma*,struct i915_request*,int ) ;
 int i915_vma_unlock (struct i915_vma*) ;
 int intel_engine_pool_mark_active (int ,struct i915_request*) ;
 scalar_t__ unlikely (int) ;

int intel_emit_vma_mark_active(struct i915_vma *vma, struct i915_request *rq)
{
 int err;

 i915_vma_lock(vma);
 err = i915_request_await_object(rq, vma->obj, 0);
 if (err == 0)
  err = i915_vma_move_to_active(vma, rq, 0);
 i915_vma_unlock(vma);
 if (unlikely(err))
  return err;

 return intel_engine_pool_mark_active(vma->private, rq);
}
