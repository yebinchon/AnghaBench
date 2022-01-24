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
struct kfd_process {int signal_mapped_size; scalar_t__ signal_page; int /*<<< orphan*/  event_idr; } ;
struct kfd_event {int event_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UNSIGNALED_EVENT_SLOT ; 
 scalar_t__ FUNC0 (struct kfd_process*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct kfd_event*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct kfd_process *p,
					    struct kfd_event *ev)
{
	int id;

	if (!p->signal_page) {
		p->signal_page = FUNC0(p);
		if (!p->signal_page)
			return -ENOMEM;
		/* Oldest user mode expects 256 event slots */
		p->signal_mapped_size = 256*8;
	}

	/*
	 * Compatibility with old user mode: Only use signal slots
	 * user mode has mapped, may be less than
	 * KFD_SIGNAL_EVENT_LIMIT. This also allows future increase
	 * of the event limit without breaking user mode.
	 */
	id = FUNC1(&p->event_idr, ev, 0, p->signal_mapped_size / 8,
		       GFP_KERNEL);
	if (id < 0)
		return id;

	ev->event_id = id;
	FUNC2(p->signal_page)[id] = UNSIGNALED_EVENT_SLOT;

	return 0;
}