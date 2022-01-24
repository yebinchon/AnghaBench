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
struct lock_class_key {int dummy; } ;
struct i915_sw_fence {unsigned long flags; scalar_t__ error; int /*<<< orphan*/  pending; int /*<<< orphan*/  wait; } ;
typedef  scalar_t__ i915_sw_fence_notify_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long I915_SW_FENCE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,struct lock_class_key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_sw_fence*) ; 

void FUNC4(struct i915_sw_fence *fence,
			  i915_sw_fence_notify_t fn,
			  const char *name,
			  struct lock_class_key *key)
{
	FUNC0(!fn || (unsigned long)fn & ~I915_SW_FENCE_MASK);

	FUNC3(fence);

	FUNC1(&fence->wait, name, key);
	FUNC2(&fence->pending, 1);
	fence->error = 0;

	fence->flags = (unsigned long)fn;
}