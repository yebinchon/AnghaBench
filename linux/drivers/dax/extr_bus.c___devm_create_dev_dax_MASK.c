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
struct inode {int /*<<< orphan*/  i_rdev; } ;
struct device {int /*<<< orphan*/  release; int /*<<< orphan*/  groups; struct device* parent; int /*<<< orphan*/  class; int /*<<< orphan*/ * bus; int /*<<< orphan*/  devt; } ;
struct dev_pagemap {int dummy; } ;
struct dev_dax {int /*<<< orphan*/  target_node; struct dax_region* region; struct dax_device* dax_dev; struct device dev; int /*<<< orphan*/  pgmap; } ;
struct dax_region {struct device* dev; int /*<<< orphan*/  id; int /*<<< orphan*/  kref; int /*<<< orphan*/  target_node; } ;
struct dax_device {int dummy; } ;
typedef  enum dev_dax_subsys { ____Placeholder_dev_dax_subsys } dev_dax_subsys ;

/* Variables and functions */
 int /*<<< orphan*/  DAXDEV_F_SYNC ; 
 int DEV_DAX_BUS ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct dev_dax* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dax_device* FUNC1 (struct dev_dax*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dax_attribute_groups ; 
 int /*<<< orphan*/  dax_bus_type ; 
 int /*<<< orphan*/  dax_class ; 
 struct inode* FUNC2 (struct dax_device*) ; 
 int /*<<< orphan*/  dev_dax_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct dev_dax*) ; 
 int /*<<< orphan*/  FUNC8 (struct dax_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct dev_dax*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct dev_dax* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct dev_pagemap*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  unregister_dev_dax ; 

struct dev_dax *FUNC14(struct dax_region *dax_region, int id,
		struct dev_pagemap *pgmap, enum dev_dax_subsys subsys)
{
	struct device *parent = dax_region->dev;
	struct dax_device *dax_dev;
	struct dev_dax *dev_dax;
	struct inode *inode;
	struct device *dev;
	int rc = -ENOMEM;

	if (id < 0)
		return FUNC0(-EINVAL);

	dev_dax = FUNC11(sizeof(*dev_dax), GFP_KERNEL);
	if (!dev_dax)
		return FUNC0(-ENOMEM);

	FUNC12(&dev_dax->pgmap, pgmap, sizeof(*pgmap));

	/*
	 * No 'host' or dax_operations since there is no access to this
	 * device outside of mmap of the resulting character device.
	 */
	dax_dev = FUNC1(dev_dax, NULL, NULL, DAXDEV_F_SYNC);
	if (!dax_dev)
		goto err;

	/* a device_dax instance is dead while the driver is not attached */
	FUNC8(dax_dev);

	/* from here on we're committed to teardown via dax_dev_release() */
	dev = &dev_dax->dev;
	FUNC5(dev);

	dev_dax->dax_dev = dax_dev;
	dev_dax->region = dax_region;
	dev_dax->target_node = dax_region->target_node;
	FUNC10(&dax_region->kref);

	inode = FUNC2(dax_dev);
	dev->devt = inode->i_rdev;
	if (subsys == DEV_DAX_BUS)
		dev->bus = &dax_bus_type;
	else
		dev->class = dax_class;
	dev->parent = parent;
	dev->groups = dax_attribute_groups;
	dev->release = dev_dax_release;
	FUNC3(dev, "dax%d.%d", dax_region->id, id);

	rc = FUNC4(dev);
	if (rc) {
		FUNC9(dev_dax);
		FUNC13(dev);
		return FUNC0(rc);
	}

	rc = FUNC6(dax_region->dev, unregister_dev_dax, dev);
	if (rc)
		return FUNC0(rc);

	return dev_dax;

 err:
	FUNC7(dev_dax);

	return FUNC0(rc);
}