#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct i915_sw_fence {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  fence; } ;
struct i915_sw_dma_fence_cb_timer {TYPE_3__* dma; TYPE_2__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  seqno; TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_timeline_name ) (TYPE_3__*) ;int /*<<< orphan*/  (* get_driver_name ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 struct i915_sw_dma_fence_cb_timer* cb ; 
 struct i915_sw_dma_fence_cb_timer* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_sw_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_sw_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_sw_fence*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  timer ; 
 struct i915_sw_fence* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct i915_sw_dma_fence_cb_timer *cb = FUNC0(cb, t, timer);
	struct i915_sw_fence *fence;

	fence = FUNC7(&cb->base.fence, NULL);
	if (!fence)
		return;

	FUNC4("Asynchronous wait on fence %s:%s:%llx timed out (hint:%pS)\n",
		  cb->dma->ops->get_driver_name(cb->dma),
		  cb->dma->ops->get_timeline_name(cb->dma),
		  cb->dma->seqno,
		  FUNC2(fence));

	FUNC3(fence, -ETIMEDOUT);
	FUNC1(fence);
}