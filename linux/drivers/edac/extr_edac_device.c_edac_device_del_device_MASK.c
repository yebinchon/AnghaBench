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
struct edac_device_ctl_info {int /*<<< orphan*/  ctl_name; int /*<<< orphan*/  mod_name; int /*<<< orphan*/  dev_idx; int /*<<< orphan*/  op_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_MC ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  OP_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  device_ctls_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct edac_device_ctl_info* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct edac_device_ctl_info *FUNC9(struct device *dev)
{
	struct edac_device_ctl_info *edac_dev;

	FUNC1(0, "\n");

	FUNC7(&device_ctls_mutex);

	/* Find the structure on the list, if not there, then leave */
	edac_dev = FUNC6(dev);
	if (edac_dev == NULL) {
		FUNC8(&device_ctls_mutex);
		return NULL;
	}

	/* mark this instance as OFFLINE */
	edac_dev->op_state = OP_OFFLINE;

	/* deregister from global list */
	FUNC0(edac_dev);

	FUNC8(&device_ctls_mutex);

	/* clear workq processing on this instance */
	FUNC4(edac_dev);

	/* Tear down the sysfs entries for this instance */
	FUNC3(edac_dev);

	FUNC5(KERN_INFO, EDAC_MC,
		"Removed device %d for %s %s: DEV %s\n",
		edac_dev->dev_idx,
		edac_dev->mod_name, edac_dev->ctl_name, FUNC2(edac_dev));

	return edac_dev;
}