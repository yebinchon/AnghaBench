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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct perf_event {TYPE_1__ hw; } ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 int /*<<< orphan*/  PERF_HES_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 

__attribute__((used)) static void FUNC2(struct perf_event *event, int flags)
{
	if (flags & PERF_EF_UPDATE)
		FUNC1(event);
	FUNC0(event);
	event->hw.state = PERF_HES_STOPPED;
}