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
struct TYPE_2__ {struct device_driver* driver; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct device_driver {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int num_rockchip_sub_drivers ; 
 struct platform_device* FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 scalar_t__* rockchip_sub_drivers ; 
 scalar_t__ FUNC4 (struct device_driver*) ; 

int FUNC5(struct device_node *ep)
{
	struct device_node *node = FUNC1(ep);
	struct platform_device *pdev;
	struct device_driver *drv;
	int i;

	if (!node)
		return -ENODEV;

	/* status disabled will prevent creation of platform-devices */
	pdev = FUNC0(node);
	FUNC2(node);
	if (!pdev)
		return -ENODEV;

	/*
	 * All rockchip subdrivers have probed at this point, so
	 * any device not having a driver now is an external bridge.
	 */
	drv = pdev->dev.driver;
	if (!drv) {
		FUNC3(pdev);
		return false;
	}

	for (i = 0; i < num_rockchip_sub_drivers; i++) {
		if (rockchip_sub_drivers[i] == FUNC4(drv)) {
			FUNC3(pdev);
			return true;
		}
	}

	FUNC3(pdev);
	return false;
}