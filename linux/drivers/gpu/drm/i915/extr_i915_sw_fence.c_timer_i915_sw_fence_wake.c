
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct i915_sw_fence {int dummy; } ;
struct TYPE_6__ {int fence; } ;
struct i915_sw_dma_fence_cb_timer {TYPE_3__* dma; TYPE_2__ base; } ;
struct TYPE_7__ {int seqno; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* get_timeline_name ) (TYPE_3__*) ;int (* get_driver_name ) (TYPE_3__*) ;} ;


 int ETIMEDOUT ;
 struct i915_sw_dma_fence_cb_timer* cb ;
 struct i915_sw_dma_fence_cb_timer* from_timer (int ,struct timer_list*,int ) ;
 int i915_sw_fence_complete (struct i915_sw_fence*) ;
 int i915_sw_fence_debug_hint (struct i915_sw_fence*) ;
 int i915_sw_fence_set_error_once (struct i915_sw_fence*,int ) ;
 int pr_notice (char*,int ,int ,int ,int ) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int timer ;
 struct i915_sw_fence* xchg (int *,int *) ;

__attribute__((used)) static void timer_i915_sw_fence_wake(struct timer_list *t)
{
 struct i915_sw_dma_fence_cb_timer *cb = from_timer(cb, t, timer);
 struct i915_sw_fence *fence;

 fence = xchg(&cb->base.fence, ((void*)0));
 if (!fence)
  return;

 pr_notice("Asynchronous wait on fence %s:%s:%llx timed out (hint:%pS)\n",
    cb->dma->ops->get_driver_name(cb->dma),
    cb->dma->ops->get_timeline_name(cb->dma),
    cb->dma->seqno,
    i915_sw_fence_debug_hint(fence));

 i915_sw_fence_set_error_once(fence, -ETIMEDOUT);
 i915_sw_fence_complete(fence);
}
