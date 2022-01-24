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
struct nvkm_notify {int /*<<< orphan*/  work; int /*<<< orphan*/  flags; struct nvkm_event* event; } ;
struct nvkm_event {int /*<<< orphan*/  refs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_NOTIFY_USER ; 
 int /*<<< orphan*/  NVKM_NOTIFY_WORK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nvkm_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_notify*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC7(struct nvkm_notify *notify)
{
	struct nvkm_event *event = notify->event;
	unsigned long flags;
	if (FUNC1(event) &&
	    FUNC5(NVKM_NOTIFY_USER, &notify->flags)) {
		FUNC3(&event->refs_lock, flags);
		FUNC2(notify);
		FUNC4(&event->refs_lock, flags);
		if (FUNC6(NVKM_NOTIFY_WORK, &notify->flags))
			FUNC0(&notify->work);
	}
}