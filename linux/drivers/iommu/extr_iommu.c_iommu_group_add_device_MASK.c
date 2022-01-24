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
struct iommu_group {int /*<<< orphan*/  id; int /*<<< orphan*/  devices_kobj; int /*<<< orphan*/  mutex; int /*<<< orphan*/  notifier; scalar_t__ domain; int /*<<< orphan*/  devices; int /*<<< orphan*/  kobj; } ;
struct group_device {struct group_device* name; int /*<<< orphan*/  list; struct device* dev; } ;
struct device {int /*<<< orphan*/  kobj; struct iommu_group* iommu_group; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IOMMU_GROUP_NOTIFY_ADD_DEVICE ; 
 int FUNC0 (scalar_t__,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_group*,struct device*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct group_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct group_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct group_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct device*) ; 

int FUNC19(struct iommu_group *group, struct device *dev)
{
	int ret, i = 0;
	struct group_device *device;

	device = FUNC10(sizeof(*device), GFP_KERNEL);
	if (!device)
		return -ENOMEM;

	device->dev = dev;

	ret = FUNC15(&dev->kobj, &group->kobj, "iommu_group");
	if (ret)
		goto err_free_device;

	device->name = FUNC5(GFP_KERNEL, "%s", FUNC8(&dev->kobj));
rename:
	if (!device->name) {
		ret = -ENOMEM;
		goto err_remove_link;
	}

	ret = FUNC16(group->devices_kobj,
				       &dev->kobj, device->name);
	if (ret) {
		if (ret == -EEXIST && i >= 0) {
			/*
			 * Account for the slim chance of collision
			 * and append an instance to the name.
			 */
			FUNC6(device->name);
			device->name = FUNC5(GFP_KERNEL, "%s.%d",
						 FUNC8(&dev->kobj), i++);
			goto rename;
		}
		goto err_free_name;
	}

	FUNC7(group->devices_kobj);

	dev->iommu_group = group;

	FUNC4(group, dev);

	FUNC13(&group->mutex);
	FUNC11(&device->list, &group->devices);
	if (group->domain)
		ret = FUNC0(group->domain, dev);
	FUNC14(&group->mutex);
	if (ret)
		goto err_put_group;

	/* Notify any listeners about change to group. */
	FUNC1(&group->notifier,
				     IOMMU_GROUP_NOTIFY_ADD_DEVICE, dev);

	FUNC18(group->id, dev);

	FUNC3(dev, "Adding to iommu group %d\n", group->id);

	return 0;

err_put_group:
	FUNC13(&group->mutex);
	FUNC12(&device->list);
	FUNC14(&group->mutex);
	dev->iommu_group = NULL;
	FUNC9(group->devices_kobj);
err_free_name:
	FUNC6(device->name);
err_remove_link:
	FUNC17(&dev->kobj, "iommu_group");
err_free_device:
	FUNC6(device);
	FUNC2(dev, "Failed to add to iommu group %d: %d\n", group->id, ret);
	return ret;
}