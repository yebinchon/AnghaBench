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
typedef  scalar_t__ u32 ;
struct nvkm_notify {scalar_t__ size; int /*<<< orphan*/ * data; int /*<<< orphan*/  work; int /*<<< orphan*/  flags; scalar_t__ block; struct nvkm_event* event; } ;
struct nvkm_event {int /*<<< orphan*/  refs_lock; int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NVKM_NOTIFY_WORK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_notify*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_notify*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC9(struct nvkm_notify *notify, void *data, u32 size)
{
	struct nvkm_event *event = notify->event;
	unsigned long flags;

	FUNC1(&event->list_lock);
	FUNC0(size != notify->size);

	FUNC6(&event->refs_lock, flags);
	if (notify->block) {
		FUNC7(&event->refs_lock, flags);
		return;
	}
	FUNC4(notify);
	FUNC7(&event->refs_lock, flags);

	if (FUNC8(NVKM_NOTIFY_WORK, &notify->flags)) {
		FUNC2((void *)notify->data, data, size);
		FUNC5(&notify->work);
	} else {
		notify->data = data;
		FUNC3(notify);
		notify->data = NULL;
	}
}