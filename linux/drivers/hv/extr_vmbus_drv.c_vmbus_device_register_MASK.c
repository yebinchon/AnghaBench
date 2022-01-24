#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * bus; struct kobject kobj; } ;
struct hv_device {TYPE_6__ device; int /*<<< orphan*/  channels_kset; TYPE_4__* channel; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  b; } ;
struct TYPE_10__ {TYPE_1__ if_instance; } ;
struct TYPE_11__ {TYPE_2__ offer; } ;
struct TYPE_12__ {TYPE_3__ offermsg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 TYPE_5__* hv_acpi_dev ; 
 int /*<<< orphan*/  hv_bus ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,struct kobject*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct hv_device*,TYPE_4__*) ; 
 int /*<<< orphan*/  vmbus_device_release ; 

int FUNC7(struct hv_device *child_device_obj)
{
	struct kobject *kobj = &child_device_obj->device.kobj;
	int ret;

	FUNC0(&child_device_obj->device, "%pUl",
		     child_device_obj->channel->offermsg.offer.if_instance.b);

	child_device_obj->device.bus = &hv_bus;
	child_device_obj->device.parent = &hv_acpi_dev->dev;
	child_device_obj->device.release = vmbus_device_release;

	/*
	 * Register with the LDM. This will kick off the driver/device
	 * binding...which will eventually call vmbus_match() and vmbus_probe()
	 */
	ret = FUNC1(&child_device_obj->device);
	if (ret) {
		FUNC5("Unable to register child device\n");
		return ret;
	}

	child_device_obj->channels_kset = FUNC3("channels",
							      NULL, kobj);
	if (!child_device_obj->channels_kset) {
		ret = -ENOMEM;
		goto err_dev_unregister;
	}

	ret = FUNC6(child_device_obj,
				     child_device_obj->channel);
	if (ret) {
		FUNC5("Unable to register primary channeln");
		goto err_kset_unregister;
	}

	return 0;

err_kset_unregister:
	FUNC4(child_device_obj->channels_kset);

err_dev_unregister:
	FUNC2(&child_device_obj->device);
	return ret;
}