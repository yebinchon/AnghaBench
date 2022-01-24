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
struct host1x_waitlist {int /*<<< orphan*/  refcount; int /*<<< orphan*/  state; } ;
struct host1x_syncpt {int dummy; } ;
struct host1x {struct host1x_syncpt* syncpt; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLS_CANCELLED ; 
 int /*<<< orphan*/  WLS_PENDING ; 
 scalar_t__ WLS_REMOVED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x_syncpt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct host1x*,struct host1x_syncpt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  waiter_release ; 

void FUNC5(struct host1x *host, unsigned int id, void *ref)
{
	struct host1x_waitlist *waiter = ref;
	struct host1x_syncpt *syncpt;

	while (FUNC0(&waiter->state, WLS_PENDING, WLS_CANCELLED) ==
	       WLS_REMOVED)
		FUNC4();

	syncpt = host->syncpt + id;
	(void)FUNC3(host, syncpt,
				FUNC1(host->syncpt + id));

	FUNC2(&waiter->refcount, waiter_release);
}