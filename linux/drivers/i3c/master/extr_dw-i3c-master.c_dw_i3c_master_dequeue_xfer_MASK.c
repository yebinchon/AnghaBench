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
struct dw_i3c_xfer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dw_i3c_master {TYPE_1__ xferqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_i3c_master*,struct dw_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct dw_i3c_master *master,
				       struct dw_i3c_xfer *xfer)
{
	unsigned long flags;

	FUNC1(&master->xferqueue.lock, flags);
	FUNC0(master, xfer);
	FUNC2(&master->xferqueue.lock, flags);
}