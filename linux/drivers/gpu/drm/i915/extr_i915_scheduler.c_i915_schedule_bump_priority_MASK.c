#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  priority; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct i915_request {TYPE_2__ sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int I915_PRIORITY_MASK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  schedule_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct i915_request *rq, unsigned int bump)
{
	unsigned long flags;

	FUNC0(bump & ~I915_PRIORITY_MASK);
	if (FUNC1(rq->sched.attr.priority) & bump)
		return;

	FUNC3(&schedule_lock, flags);
	FUNC2(&rq->sched, bump);
	FUNC4(&schedule_lock, flags);
}