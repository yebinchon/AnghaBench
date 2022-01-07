
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int obj; } ;
struct i915_request {int dummy; } ;


 unsigned int EXEC_OBJECT_WRITE ;
 int i915_request_await_object (struct i915_request*,int ,unsigned int) ;
 int i915_vma_lock (struct i915_vma*) ;
 int i915_vma_move_to_active (struct i915_vma*,struct i915_request*,unsigned int) ;
 int i915_vma_unlock (struct i915_vma*) ;

__attribute__((used)) static int move_to_active(struct i915_vma *vma,
     struct i915_request *rq,
     unsigned int flags)
{
 int err;

 i915_vma_lock(vma);
 err = i915_request_await_object(rq, vma->obj,
     flags & EXEC_OBJECT_WRITE);
 if (err == 0)
  err = i915_vma_move_to_active(vma, rq, flags);
 i915_vma_unlock(vma);

 return err;
}
