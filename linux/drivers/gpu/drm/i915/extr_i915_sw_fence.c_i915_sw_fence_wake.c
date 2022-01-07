
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int private; int entry; } ;
typedef TYPE_1__ wait_queue_entry_t ;


 int I915_SW_FENCE_FLAG_ALLOC ;
 int __i915_sw_fence_complete (int ,void*) ;
 int i915_sw_fence_set_error_once (int ,int) ;
 int kfree (TYPE_1__*) ;
 int list_del (int *) ;

__attribute__((used)) static int i915_sw_fence_wake(wait_queue_entry_t *wq, unsigned mode, int flags, void *key)
{
 i915_sw_fence_set_error_once(wq->private, flags);

 list_del(&wq->entry);
 __i915_sw_fence_complete(wq->private, key);

 if (wq->flags & I915_SW_FENCE_FLAG_ALLOC)
  kfree(wq);
 return 0;
}
