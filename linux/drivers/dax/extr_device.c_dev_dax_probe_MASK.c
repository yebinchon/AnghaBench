#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct inode {struct dev_dax* i_cdev; } ;
struct device {int /*<<< orphan*/  devt; int /*<<< orphan*/  kobj; TYPE_4__* driver; TYPE_3__* parent; scalar_t__ class; } ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
struct dev_dax {int /*<<< orphan*/  owner; TYPE_5__ pgmap; TYPE_1__* region; struct dax_device* dax_dev; } ;
struct dax_device {int dummy; } ;
struct cdev {int /*<<< orphan*/  owner; TYPE_5__ pgmap; TYPE_1__* region; struct dax_device* dax_dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  owner; } ;
struct TYPE_8__ {TYPE_2__* driver; } ;
struct TYPE_7__ {int /*<<< orphan*/  owner; } ;
struct TYPE_6__ {struct resource res; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MEMORY_DEVICE_DEVDAX ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct dev_dax*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_dax*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dev_dax*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dax_fops ; 
 struct inode* FUNC5 (struct dax_device*) ; 
 int /*<<< orphan*/  dev_dax_cdev_del ; 
 int /*<<< orphan*/  dev_dax_kill ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,struct resource*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,struct dev_dax*) ; 
 void* FUNC9 (struct device*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (struct dax_device*) ; 
 struct dev_dax* FUNC13 (struct device*) ; 

int FUNC14(struct device *dev)
{
	struct dev_dax *dev_dax = FUNC13(dev);
	struct dax_device *dax_dev = dev_dax->dax_dev;
	struct resource *res = &dev_dax->region->res;
	struct inode *inode;
	struct cdev *cdev;
	void *addr;
	int rc;

	/* 1:1 map region resource range to device-dax instance range */
	if (!FUNC10(dev, res->start, FUNC11(res),
				FUNC6(dev))) {
		FUNC7(dev, "could not reserve region %pR\n", res);
		return -EBUSY;
	}

	dev_dax->pgmap.type = MEMORY_DEVICE_DEVDAX;
	addr = FUNC9(dev, &dev_dax->pgmap);
	if (FUNC0(addr))
		return FUNC1(addr);

	inode = FUNC5(dax_dev);
	cdev = inode->i_cdev;
	FUNC3(cdev, &dax_fops);
	if (dev->class) {
		/* for the CONFIG_DEV_DAX_PMEM_COMPAT case */
		cdev->owner = dev->parent->driver->owner;
	} else
		cdev->owner = dev->driver->owner;
	FUNC4(cdev, &dev->kobj);
	rc = FUNC2(cdev, dev->devt, 1);
	if (rc)
		return rc;

	rc = FUNC8(dev, dev_dax_cdev_del, cdev);
	if (rc)
		return rc;

	FUNC12(dax_dev);
	return FUNC8(dev, dev_dax_kill, dev_dax);
}