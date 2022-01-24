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
struct cdns_i3c_xfer {int /*<<< orphan*/  node; int /*<<< orphan*/  comp; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct cdns_i3c_xfer* cur; int /*<<< orphan*/  list; } ;
struct cdns_i3c_master {TYPE_1__ xferqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdns_i3c_master*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct cdns_i3c_master *master,
				       struct cdns_i3c_xfer *xfer)
{
	unsigned long flags;

	FUNC1(&xfer->comp);
	FUNC3(&master->xferqueue.lock, flags);
	if (master->xferqueue.cur) {
		FUNC2(&xfer->node, &master->xferqueue.list);
	} else {
		master->xferqueue.cur = xfer;
		FUNC0(master);
	}
	FUNC4(&master->xferqueue.lock, flags);
}