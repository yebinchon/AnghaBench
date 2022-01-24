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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  child_relid; } ;
struct kobject {int /*<<< orphan*/  kset; } ;
struct vmbus_channel {TYPE_1__ offermsg; struct kobject kobj; } ;
struct device {int dummy; } ;
struct hv_device {int /*<<< orphan*/  channels_kset; struct device device; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct device const*,char*) ; 
 int FUNC1 (struct kobject*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kobject*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmbus_chan_group ; 
 int /*<<< orphan*/  vmbus_chan_ktype ; 

int FUNC4(struct hv_device *dev, struct vmbus_channel *channel)
{
	const struct device *device = &dev->device;
	struct kobject *kobj = &channel->kobj;
	u32 relid = channel->offermsg.child_relid;
	int ret;

	kobj->kset = dev->channels_kset;
	ret = FUNC1(kobj, &vmbus_chan_ktype, NULL,
				   "%u", relid);
	if (ret)
		return ret;

	ret = FUNC3(kobj, &vmbus_chan_group);

	if (ret) {
		/*
		 * The calling functions' error handling paths will cleanup the
		 * empty channel directory.
		 */
		FUNC0(device, "Unable to set up channel sysfs files\n");
		return ret;
	}

	FUNC2(kobj, KOBJ_ADD);

	return 0;
}