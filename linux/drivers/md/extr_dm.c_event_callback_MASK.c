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
struct mapped_device {int /*<<< orphan*/  eventq; int /*<<< orphan*/  event_nr; int /*<<< orphan*/  disk; int /*<<< orphan*/  uevent_lock; int /*<<< orphan*/  uevent_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  uevents ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *context)
{
	unsigned long flags;
	FUNC0(uevents);
	struct mapped_device *md = (struct mapped_device *) context;

	FUNC6(&md->uevent_lock, flags);
	FUNC5(&md->uevent_list, &uevents);
	FUNC7(&md->uevent_lock, flags);

	FUNC4(&uevents, &FUNC2(md->disk)->kobj);

	FUNC1(&md->event_nr);
	FUNC8(&md->eventq);
	FUNC3();
}