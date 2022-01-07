
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; struct i915_sw_fence* private; int (* func ) (TYPE_1__*,int ,int ,int *) ;int entry; } ;
typedef TYPE_1__ wait_queue_entry_t ;
struct TYPE_8__ {int lock; } ;
struct i915_sw_fence {TYPE_5__ wait; int error; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOMEM ;
 int I915_SW_FENCE_FLAG_ALLOC ;
 int INIT_LIST_HEAD (int *) ;
 int __add_wait_queue_entry_tail (TYPE_5__*,TYPE_1__*) ;
 int debug_fence_assert (struct i915_sw_fence*) ;
 int gfpflags_allow_blocking (int ) ;
 int i915_sw_fence_await (struct i915_sw_fence*) ;
 int i915_sw_fence_check_if_after (struct i915_sw_fence*,struct i915_sw_fence*) ;
 scalar_t__ i915_sw_fence_done (struct i915_sw_fence*) ;
 int i915_sw_fence_set_error_once (struct i915_sw_fence*,int ) ;
 int i915_sw_fence_wait (struct i915_sw_fence*) ;
 int i915_sw_fence_wake (TYPE_1__*,int ,int ,int *) ;
 TYPE_1__* kmalloc (int,int ) ;
 scalar_t__ likely (int) ;
 int might_sleep_if (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int __i915_sw_fence_await_sw_fence(struct i915_sw_fence *fence,
       struct i915_sw_fence *signaler,
       wait_queue_entry_t *wq, gfp_t gfp)
{
 unsigned long flags;
 int pending;

 debug_fence_assert(fence);
 might_sleep_if(gfpflags_allow_blocking(gfp));

 if (i915_sw_fence_done(signaler)) {
  i915_sw_fence_set_error_once(fence, signaler->error);
  return 0;
 }

 debug_fence_assert(signaler);


 if (unlikely(i915_sw_fence_check_if_after(fence, signaler)))
  return -EINVAL;

 pending = 0;
 if (!wq) {
  wq = kmalloc(sizeof(*wq), gfp);
  if (!wq) {
   if (!gfpflags_allow_blocking(gfp))
    return -ENOMEM;

   i915_sw_fence_wait(signaler);
   i915_sw_fence_set_error_once(fence, signaler->error);
   return 0;
  }

  pending |= I915_SW_FENCE_FLAG_ALLOC;
 }

 INIT_LIST_HEAD(&wq->entry);
 wq->flags = pending;
 wq->func = i915_sw_fence_wake;
 wq->private = fence;

 i915_sw_fence_await(fence);

 spin_lock_irqsave(&signaler->wait.lock, flags);
 if (likely(!i915_sw_fence_done(signaler))) {
  __add_wait_queue_entry_tail(&signaler->wait, wq);
  pending = 1;
 } else {
  i915_sw_fence_wake(wq, 0, signaler->error, ((void*)0));
  pending = 0;
 }
 spin_unlock_irqrestore(&signaler->wait.lock, flags);

 return pending;
}
