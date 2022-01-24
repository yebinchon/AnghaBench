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
typedef  int u32 ;
struct platform_device_info {char* name; int id; struct device* parent; } ;
struct device {scalar_t__ of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device* parent; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; int /*<<< orphan*/ * fops; } ;
struct occ {scalar_t__ idx; TYPE_1__ mdev; int /*<<< orphan*/  name; int /*<<< orphan*/  occ_lock; int /*<<< orphan*/  sbefifo; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_MAX ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct occ* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  occ_fops ; 
 int /*<<< orphan*/  occ_ida ; 
 int FUNC7 (scalar_t__,char*,int*) ; 
 struct platform_device* FUNC8 (struct platform_device_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct occ*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int rc;
	u32 reg;
	struct occ *occ;
	struct platform_device *hwmon_dev;
	struct device *dev = &pdev->dev;
	struct platform_device_info hwmon_dev_info = {
		.parent = dev,
		.name = "occ-hwmon",
	};

	occ = FUNC2(dev, sizeof(*occ), GFP_KERNEL);
	if (!occ)
		return -ENOMEM;

	occ->dev = dev;
	occ->sbefifo = dev->parent;
	FUNC6(&occ->occ_lock);

	if (dev->of_node) {
		rc = FUNC7(dev->of_node, "reg", &reg);
		if (!rc) {
			/* make sure we don't have a duplicate from dts */
			occ->idx = FUNC3(&occ_ida, reg, reg + 1,
						  GFP_KERNEL);
			if (occ->idx < 0)
				occ->idx = FUNC3(&occ_ida, 1, INT_MAX,
							  GFP_KERNEL);
		} else {
			occ->idx = FUNC3(&occ_ida, 1, INT_MAX,
						  GFP_KERNEL);
		}
	} else {
		occ->idx = FUNC3(&occ_ida, 1, INT_MAX, GFP_KERNEL);
	}

	FUNC9(pdev, occ);

	FUNC10(occ->name, sizeof(occ->name), "occ%d", occ->idx);
	occ->mdev.fops = &occ_fops;
	occ->mdev.minor = MISC_DYNAMIC_MINOR;
	occ->mdev.name = occ->name;
	occ->mdev.parent = dev;

	rc = FUNC5(&occ->mdev);
	if (rc) {
		FUNC0(dev, "failed to register miscdevice: %d\n", rc);
		FUNC4(&occ_ida, occ->idx);
		return rc;
	}

	hwmon_dev_info.id = occ->idx;
	hwmon_dev = FUNC8(&hwmon_dev_info);
	if (!hwmon_dev)
		FUNC1(dev, "failed to create hwmon device\n");

	return 0;
}