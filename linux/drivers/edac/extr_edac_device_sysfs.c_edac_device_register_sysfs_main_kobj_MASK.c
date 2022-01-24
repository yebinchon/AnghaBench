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
struct edac_device_ctl_info {int /*<<< orphan*/  owner; int /*<<< orphan*/  name; int /*<<< orphan*/  kobj; struct bus_type* edac_subsys; } ;
struct bus_type {TYPE_1__* dev_root; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 struct bus_type* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ktype_device_ctrl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct edac_device_ctl_info *edac_dev)
{
	struct bus_type *edac_subsys;
	int err;

	FUNC0(1, "\n");

	/* get the /sys/devices/system/edac reference */
	edac_subsys = FUNC1();

	/* Point to the 'edac_subsys' this instance 'reports' to */
	edac_dev->edac_subsys = edac_subsys;

	/* Init the devices's kobject */
	FUNC4(&edac_dev->kobj, 0, sizeof(struct kobject));

	/* Record which module 'owns' this control structure
	 * and bump the ref count of the module
	 */
	edac_dev->owner = THIS_MODULE;

	if (!FUNC6(edac_dev->owner)) {
		err = -ENODEV;
		goto err_out;
	}

	/* register */
	err = FUNC2(&edac_dev->kobj, &ktype_device_ctrl,
				   &edac_subsys->dev_root->kobj,
				   "%s", edac_dev->name);
	if (err) {
		FUNC0(1, "Failed to register '.../edac/%s'\n",
			 edac_dev->name);
		goto err_kobj_reg;
	}
	FUNC3(&edac_dev->kobj, KOBJ_ADD);

	/* At this point, to 'free' the control struct,
	 * edac_device_unregister_sysfs_main_kobj() must be used
	 */

	FUNC0(4, "Registered '.../edac/%s' kobject\n", edac_dev->name);

	return 0;

	/* Error exit stack */
err_kobj_reg:
	FUNC5(edac_dev->owner);

err_out:
	return err;
}