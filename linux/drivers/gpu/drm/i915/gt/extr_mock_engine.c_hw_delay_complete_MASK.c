#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct mock_engine {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  hw_delay; } ;
struct TYPE_2__ {scalar_t__ delay; } ;
struct i915_request {TYPE_1__ mock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_request*) ; 
 struct mock_engine* engine ; 
 struct i915_request* FUNC1 (struct mock_engine*) ; 
 struct mock_engine* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw_delay ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct mock_engine *engine = FUNC2(engine, t, hw_delay);
	struct i915_request *request;
	unsigned long flags;

	FUNC4(&engine->hw_lock, flags);

	/* Timer fired, first request is complete */
	request = FUNC1(engine);
	if (request)
		FUNC0(request);

	/*
	 * Also immediately signal any subsequent 0-delay requests, but
	 * requeue the timer for the next delayed request.
	 */
	while ((request = FUNC1(engine))) {
		if (request->mock.delay) {
			FUNC3(&engine->hw_delay,
				  jiffies + request->mock.delay);
			break;
		}

		FUNC0(request);
	}

	FUNC5(&engine->hw_lock, flags);
}