#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct list_head {int dummy; } ;
struct i915_sw_fence {int /*<<< orphan*/  pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_FENCE_IDLE ; 
 int /*<<< orphan*/  DEBUG_FENCE_NOTIFY ; 
 int /*<<< orphan*/  FENCE_COMPLETE ; 
 int /*<<< orphan*/  FENCE_FREE ; 
 scalar_t__ NOTIFY_DONE ; 
 scalar_t__ FUNC0 (struct i915_sw_fence*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_sw_fence*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_sw_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_sw_fence*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_sw_fence*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct i915_sw_fence *fence,
				     struct list_head *continuation)
{
	FUNC3(fence);

	if (!FUNC2(&fence->pending))
		return;

	FUNC5(fence, DEBUG_FENCE_IDLE, DEBUG_FENCE_NOTIFY);

	if (FUNC0(fence, FENCE_COMPLETE) != NOTIFY_DONE)
		return;

	FUNC5(fence, DEBUG_FENCE_NOTIFY, DEBUG_FENCE_IDLE);

	FUNC1(fence, continuation);

	FUNC4(fence);
	FUNC0(fence, FENCE_FREE);
}