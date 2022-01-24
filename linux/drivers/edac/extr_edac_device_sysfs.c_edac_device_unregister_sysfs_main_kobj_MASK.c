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
struct edac_device_ctl_info {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct edac_device_ctl_info *dev)
{
	FUNC0(0, "\n");
	FUNC0(4, "name of kobject is: %s\n", FUNC1(&dev->kobj));

	/*
	 * Unregister the edac device's kobject and
	 * allow for reference count to reach 0 at which point
	 * the callback will be called to:
	 *   a) module_put() this module
	 *   b) 'kfree' the memory
	 */
	FUNC2(&dev->kobj);
}