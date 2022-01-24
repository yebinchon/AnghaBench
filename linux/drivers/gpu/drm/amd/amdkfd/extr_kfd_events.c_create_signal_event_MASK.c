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
struct kfd_process {int signal_mapped_size; int signal_event_count; int signal_event_limit_reached; TYPE_1__* signal_page; } ;
struct kfd_event {size_t event_id; int /*<<< orphan*/ * user_signal_address; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * user_address; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (struct kfd_process*,struct kfd_event*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct file *devkfd,
				struct kfd_process *p,
				struct kfd_event *ev)
{
	int ret;

	if (p->signal_mapped_size &&
	    p->signal_event_count == p->signal_mapped_size / 8) {
		if (!p->signal_event_limit_reached) {
			FUNC2("Signal event wasn't created because limit was reached\n");
			p->signal_event_limit_reached = true;
		}
		return -ENOSPC;
	}

	ret = FUNC0(p, ev);
	if (ret) {
		FUNC2("Signal event wasn't created because out of kernel memory\n");
		return ret;
	}

	p->signal_event_count++;

	ev->user_signal_address = &p->signal_page->user_address[ev->event_id];
	FUNC1("Signal event number %zu created with id %d, address %p\n",
			p->signal_event_count, ev->event_id,
			ev->user_signal_address);

	return 0;
}