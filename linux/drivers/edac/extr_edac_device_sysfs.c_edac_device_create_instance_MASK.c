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
struct kobject {int dummy; } ;
struct edac_device_instance {int name; int nr_blocks; struct kobject kobj; int /*<<< orphan*/ * blocks; struct edac_device_ctl_info* ctl; } ;
struct edac_device_ctl_info {int /*<<< orphan*/  kobj; struct edac_device_instance* instances; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int FUNC1 (struct edac_device_ctl_info*,struct edac_device_instance*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*,int /*<<< orphan*/ *) ; 
 struct kobject* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC6 (struct kobject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ktype_instance_ctrl ; 
 int /*<<< orphan*/  FUNC7 (struct kobject*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct edac_device_ctl_info *edac_dev,
				int idx)
{
	int i, j;
	int err;
	struct edac_device_instance *instance;
	struct kobject *main_kobj;

	instance = &edac_dev->instances[idx];

	/* Init the instance's kobject */
	FUNC7(&instance->kobj, 0, sizeof(struct kobject));

	instance->ctl = edac_dev;

	/* bump the main kobject's reference count for this controller
	 * and this instance is dependent on the main
	 */
	main_kobj = FUNC3(&edac_dev->kobj);
	if (!main_kobj) {
		err = -ENODEV;
		goto err_out;
	}

	/* Formally register this instance's kobject under the edac_device */
	err = FUNC4(&instance->kobj, &ktype_instance_ctrl,
				   &edac_dev->kobj, "%s", instance->name);
	if (err != 0) {
		FUNC0(2, "Failed to register instance '%s'\n",
			 instance->name);
		FUNC5(main_kobj);
		goto err_out;
	}

	FUNC0(4, "now register '%d' blocks for instance %d\n",
		 instance->nr_blocks, idx);

	/* register all blocks of this instance */
	for (i = 0; i < instance->nr_blocks; i++) {
		err = FUNC1(edac_dev, instance,
						&instance->blocks[i]);
		if (err) {
			/* If any fail, remove all previous ones */
			for (j = 0; j < i; j++)
				FUNC2(edac_dev,
							&instance->blocks[j]);
			goto err_release_instance_kobj;
		}
	}
	FUNC6(&instance->kobj, KOBJ_ADD);

	FUNC0(4, "Registered instance %d '%s' kobject\n",
		 idx, instance->name);

	return 0;

	/* error unwind stack */
err_release_instance_kobj:
	FUNC5(&instance->kobj);

err_out:
	return err;
}