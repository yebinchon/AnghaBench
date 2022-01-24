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
typedef  int /*<<< orphan*/  u32 ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_head; } ;
struct host1x_syncpt {TYPE_1__ intr; int /*<<< orphan*/  id; } ;
struct host1x {int dummy; } ;

/* Variables and functions */
 int HOST1X_INTR_ACTION_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct host1x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct host1x *host,
			     struct host1x_syncpt *syncpt,
			     u32 threshold)
{
	struct list_head completed[HOST1X_INTR_ACTION_COUNT];
	unsigned int i;
	int empty;

	for (i = 0; i < HOST1X_INTR_ACTION_COUNT; ++i)
		FUNC0(completed + i);

	FUNC6(&syncpt->intr.lock);

	FUNC3(&syncpt->intr.wait_head, threshold,
				 completed);

	empty = FUNC2(&syncpt->intr.wait_head);
	if (empty)
		FUNC1(host, syncpt->id);
	else
		FUNC4(host, &syncpt->intr.wait_head,
					  syncpt->id);

	FUNC7(&syncpt->intr.lock);

	FUNC5(completed);

	return empty;
}