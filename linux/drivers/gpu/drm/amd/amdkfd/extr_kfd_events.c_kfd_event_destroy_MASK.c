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
typedef  int /*<<< orphan*/  uint32_t ;
struct kfd_process {int /*<<< orphan*/  event_mutex; } ;
struct kfd_event {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct kfd_process*,struct kfd_event*) ; 
 struct kfd_event* FUNC1 (struct kfd_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct kfd_process *p, uint32_t event_id)
{
	struct kfd_event *ev;
	int ret = 0;

	FUNC2(&p->event_mutex);

	ev = FUNC1(p, event_id);

	if (ev)
		FUNC0(p, ev);
	else
		ret = -EINVAL;

	FUNC3(&p->event_mutex);
	return ret;
}