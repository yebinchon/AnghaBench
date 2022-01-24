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
struct cec_devnode {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct cec_devnode *devnode)
{
	/*
	 * Check if the cec device is available. This needs to be done with
	 * the devnode->lock held to prevent an open/unregister race:
	 * without the lock, the device could be unregistered and freed between
	 * the devnode->registered check and get_device() calls, leading to
	 * a crash.
	 */
	FUNC1(&devnode->lock);
	/*
	 * return ENXIO if the cec device has been removed
	 * already or if it is not registered anymore.
	 */
	if (!devnode->registered) {
		FUNC2(&devnode->lock);
		return -ENXIO;
	}
	/* and increase the device refcount */
	FUNC0(&devnode->dev);
	FUNC2(&devnode->lock);
	return 0;
}