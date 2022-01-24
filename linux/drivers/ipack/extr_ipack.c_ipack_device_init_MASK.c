#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; } ;
struct ipack_device {TYPE_3__ dev; TYPE_2__* bus; scalar_t__ speed_32mhz; int /*<<< orphan*/  slot; } ;
struct TYPE_8__ {TYPE_1__* ops; int /*<<< orphan*/  bus_nr; int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {int (* set_clockrate ) (struct ipack_device*,int) ;scalar_t__ (* reset_timeout ) (struct ipack_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  ipack_bus_type ; 
 int FUNC4 (struct ipack_device*) ; 
 int /*<<< orphan*/  ipack_device_release ; 
 int FUNC5 (struct ipack_device*,int) ; 
 scalar_t__ FUNC6 (struct ipack_device*) ; 
 int FUNC7 (struct ipack_device*,int) ; 

int FUNC8(struct ipack_device *dev)
{
	int ret;

	dev->dev.bus = &ipack_bus_type;
	dev->dev.release = ipack_device_release;
	dev->dev.parent = dev->bus->parent;
	FUNC1(&dev->dev,
		     "ipack-dev.%u.%u", dev->bus->bus_nr, dev->slot);
	FUNC3(&dev->dev);

	if (dev->bus->ops->set_clockrate(dev, 8))
		FUNC2(&dev->dev, "failed to switch to 8 MHz operation for reading of device ID.\n");
	if (dev->bus->ops->reset_timeout(dev))
		FUNC2(&dev->dev, "failed to reset potential timeout.");

	ret = FUNC4(dev);
	if (ret < 0) {
		FUNC0(&dev->dev, "error reading device id section.\n");
		return ret;
	}

	/* if the device supports 32 MHz operation, use it. */
	if (dev->speed_32mhz) {
		ret = dev->bus->ops->set_clockrate(dev, 32);
		if (ret < 0)
			FUNC0(&dev->dev, "failed to switch to 32 MHz operation.\n");
	}

	return 0;
}