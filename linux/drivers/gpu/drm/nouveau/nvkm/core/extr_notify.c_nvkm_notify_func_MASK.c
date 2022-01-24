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
struct nvkm_notify {int (* func ) (struct nvkm_notify*) ;int /*<<< orphan*/  flags; struct nvkm_event* event; } ;
struct nvkm_event {int /*<<< orphan*/  refs_lock; } ;

/* Variables and functions */
 int NVKM_NOTIFY_KEEP ; 
 int /*<<< orphan*/  NVKM_NOTIFY_USER ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_notify*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct nvkm_notify*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC5(struct nvkm_notify *notify)
{
	struct nvkm_event *event = notify->event;
	int ret = notify->func(notify);
	unsigned long flags;
	if ((ret == NVKM_NOTIFY_KEEP) ||
	    !FUNC4(NVKM_NOTIFY_USER, &notify->flags)) {
		FUNC1(&event->refs_lock, flags);
		FUNC0(notify);
		FUNC2(&event->refs_lock, flags);
	}
}