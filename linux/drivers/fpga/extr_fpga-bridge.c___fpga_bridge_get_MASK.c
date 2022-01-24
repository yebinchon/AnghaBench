#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fpga_image_info {int dummy; } ;
struct fpga_bridge {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; struct fpga_image_info* info; } ;
struct device {TYPE_2__* parent; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 struct fpga_bridge* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct fpga_bridge* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fpga_bridge *FUNC7(struct device *dev,
					     struct fpga_image_info *info)
{
	struct fpga_bridge *bridge;
	int ret = -ENODEV;

	bridge = FUNC5(dev);

	bridge->info = info;

	if (!FUNC2(&bridge->mutex)) {
		ret = -EBUSY;
		goto err_dev;
	}

	if (!FUNC6(dev->parent->driver->owner))
		goto err_ll_mod;

	FUNC1(&bridge->dev, "get\n");

	return bridge;

err_ll_mod:
	FUNC3(&bridge->mutex);
err_dev:
	FUNC4(dev);
	return FUNC0(ret);
}