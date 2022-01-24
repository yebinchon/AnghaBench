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
struct dax_device {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAXDEV_ALIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dax_host_lock ; 
 int /*<<< orphan*/  dax_srcu ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct dax_device *dax_dev)
{
	if (!dax_dev)
		return;

	FUNC0(DAXDEV_ALIVE, &dax_dev->flags);

	FUNC4(&dax_srcu);

	FUNC2(&dax_host_lock);
	FUNC1(&dax_dev->list);
	FUNC3(&dax_host_lock);
}