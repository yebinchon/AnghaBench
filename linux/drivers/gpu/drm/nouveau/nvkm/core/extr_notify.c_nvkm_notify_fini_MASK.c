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
struct nvkm_notify {TYPE_1__* event; scalar_t__ data; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_notify*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC5(struct nvkm_notify *notify)
{
	unsigned long flags;
	if (notify->event) {
		FUNC2(notify);
		FUNC3(&notify->event->list_lock, flags);
		FUNC1(&notify->head);
		FUNC4(&notify->event->list_lock, flags);
		FUNC0((void *)notify->data);
		notify->event = NULL;
	}
}