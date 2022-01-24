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
struct kfd_process {int /*<<< orphan*/  event_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  KFD_EVENT_TYPE_HW_EXCEPTION ; 
 struct kfd_process* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC2 (struct kfd_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(unsigned int pasid)
{
	/*
	 * Because we are called from arbitrary context (workqueue) as opposed
	 * to process context, kfd_process could attempt to exit while we are
	 * running so the lookup function increments the process ref count.
	 */
	struct kfd_process *p = FUNC0(pasid);

	if (!p)
		return; /* Presumably process exited. */

	FUNC3(&p->event_mutex);

	/* Lookup events by type and signal them */
	FUNC2(p, KFD_EVENT_TYPE_HW_EXCEPTION, NULL);

	FUNC4(&p->event_mutex);
	FUNC1(p);
}