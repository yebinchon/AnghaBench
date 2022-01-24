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
typedef  scalar_t__ u64 ;
struct hw_perf_event {int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	u64 prev, new;

again:
	prev = FUNC3(&hwc->prev_count);
	new = FUNC0(event);

	if (FUNC2(&hwc->prev_count, prev, new) != prev)
		goto again;

	FUNC1(new - prev, &event->count);
}