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
struct intel_gvt {int /*<<< orphan*/  sched_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_GVT_REQUEST_EVENT_SCHED ; 
 int /*<<< orphan*/  FUNC0 (struct intel_gvt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct intel_gvt *gvt)
{
	FUNC1(&gvt->sched_lock);
	FUNC0(gvt, INTEL_GVT_REQUEST_EVENT_SCHED);
	FUNC2(&gvt->sched_lock);
}