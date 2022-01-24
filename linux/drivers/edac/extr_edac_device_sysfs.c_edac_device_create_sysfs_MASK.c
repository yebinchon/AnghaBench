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
struct kobject {int dummy; } ;
struct edac_device_ctl_info {int dev_idx; struct kobject kobj; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_DEVICE_SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (struct edac_device_ctl_info*) ; 
 int FUNC2 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct edac_device_ctl_info*) ; 
 int FUNC4 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kobject*,int /*<<< orphan*/ ) ; 

int FUNC6(struct edac_device_ctl_info *edac_dev)
{
	int err;
	struct kobject *edac_kobj = &edac_dev->kobj;

	FUNC0(0, "idx=%d\n", edac_dev->dev_idx);

	/*  go create any main attributes callers wants */
	err = FUNC1(edac_dev);
	if (err) {
		FUNC0(0, "failed to add sysfs attribs\n");
		goto err_out;
	}

	/* create a symlink from the edac device
	 * to the platform 'device' being used for this
	 */
	err = FUNC4(edac_kobj,
				&edac_dev->dev->kobj, EDAC_DEVICE_SYMLINK);
	if (err) {
		FUNC0(0, "sysfs_create_link() returned err= %d\n", err);
		goto err_remove_main_attribs;
	}

	/* Create the first level instance directories
	 * In turn, the nested blocks beneath the instances will
	 * be registered as well
	 */
	err = FUNC2(edac_dev);
	if (err) {
		FUNC0(0, "edac_device_create_instances() returned err= %d\n",
			 err);
		goto err_remove_link;
	}


	FUNC0(4, "create-instances done, idx=%d\n", edac_dev->dev_idx);

	return 0;

	/* Error unwind stack */
err_remove_link:
	/* remove the sym link */
	FUNC5(&edac_dev->kobj, EDAC_DEVICE_SYMLINK);

err_remove_main_attribs:
	FUNC3(edac_dev);

err_out:
	return err;
}