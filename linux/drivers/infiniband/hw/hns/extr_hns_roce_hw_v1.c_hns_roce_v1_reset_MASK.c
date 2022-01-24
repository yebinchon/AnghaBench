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
struct hns_roce_dev {TYPE_1__* pdev; } ;
struct fwnode_reference_args {struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct device_node {struct fwnode_handle fwnode; } ;
struct device {int /*<<< orphan*/  fwnode; struct device_node* of_node; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  SLEEP_TIME_INTERVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct fwnode_reference_args*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int FUNC3 (struct fwnode_handle*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC6 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hns_roce_dev *hr_dev, bool dereset)
{
	struct device_node *dsaf_node;
	struct device *dev = &hr_dev->pdev->dev;
	struct device_node *np = dev->of_node;
	struct fwnode_handle *fwnode;
	int ret;

	/* check if this is DT/ACPI case */
	if (FUNC2(dev)) {
		dsaf_node = FUNC6(np, "dsaf-handle", 0);
		if (!dsaf_node) {
			FUNC1(dev, "could not find dsaf-handle\n");
			return -EINVAL;
		}
		fwnode = &dsaf_node->fwnode;
	} else if (FUNC4(dev->fwnode)) {
		struct fwnode_reference_args args;

		ret = FUNC0(dev->fwnode,
						       "dsaf-handle", 0, &args);
		if (ret) {
			FUNC1(dev, "could not find dsaf-handle\n");
			return ret;
		}
		fwnode = args.fwnode;
	} else {
		FUNC1(dev, "cannot read data from DT or ACPI\n");
		return -ENXIO;
	}

	ret = FUNC3(fwnode, false);
	if (ret)
		return ret;

	if (dereset) {
		FUNC5(SLEEP_TIME_INTERVAL);
		ret = FUNC3(fwnode, true);
	}

	return ret;
}