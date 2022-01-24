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
 int /*<<< orphan*/  EDAC_DEVICE_SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct edac_device_ctl_info *edac_dev)
{
	FUNC0(0, "\n");

	/* remove any main attributes for this device */
	FUNC2(edac_dev);

	/* remove the device sym link */
	FUNC3(&edac_dev->kobj, EDAC_DEVICE_SYMLINK);

	/* walk the instance/block kobject tree, deconstructing it */
	FUNC1(edac_dev);
}