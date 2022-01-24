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
typedef  int uint32_t ;
struct kfd_process {int /*<<< orphan*/  event_idr; int /*<<< orphan*/  signal_page; } ;
struct kfd_event {int dummy; } ;

/* Variables and functions */
 int KFD_SIGNAL_EVENT_LIMIT ; 
 scalar_t__ UNSIGNALED_EVENT_SLOT ; 
 struct kfd_event* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct kfd_event *FUNC2(
	struct kfd_process *p, uint32_t id, uint32_t bits)
{
	struct kfd_event *ev;

	if (!p->signal_page || id >= KFD_SIGNAL_EVENT_LIMIT)
		return NULL;

	/* Fast path for the common case that @id is not a partial ID
	 * and we only need a single lookup.
	 */
	if (bits > 31 || (1U << bits) >= KFD_SIGNAL_EVENT_LIMIT) {
		if (FUNC1(p->signal_page)[id] == UNSIGNALED_EVENT_SLOT)
			return NULL;

		return FUNC0(&p->event_idr, id);
	}

	/* General case for partial IDs: Iterate over all matching IDs
	 * and find the first one that has signaled.
	 */
	for (ev = NULL; id < KFD_SIGNAL_EVENT_LIMIT && !ev; id += 1U << bits) {
		if (FUNC1(p->signal_page)[id] == UNSIGNALED_EVENT_SLOT)
			continue;

		ev = FUNC0(&p->event_idr, id);
	}

	return ev;
}