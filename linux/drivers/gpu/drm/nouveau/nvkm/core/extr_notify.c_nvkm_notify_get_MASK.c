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
struct nvkm_notify {int /*<<< orphan*/  flags; struct nvkm_event* event; } ;
struct nvkm_event {int /*<<< orphan*/  refs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_NOTIFY_USER ; 
 scalar_t__ FUNC0 (struct nvkm_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_notify*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(struct nvkm_notify *notify)
{
	struct nvkm_event *event = notify->event;
	unsigned long flags;
	if (FUNC0(event) &&
	    !FUNC4(NVKM_NOTIFY_USER, &notify->flags)) {
		FUNC2(&event->refs_lock, flags);
		FUNC1(notify);
		FUNC3(&event->refs_lock, flags);
	}
}