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
struct ipack_driver {TYPE_1__* ops; } ;
struct ipack_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct ipack_device*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ipack_device*) ; 
 struct ipack_device* FUNC1 (struct device*) ; 
 struct ipack_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *device)
{
	struct ipack_device *dev = FUNC1(device);
	struct ipack_driver *drv = FUNC2(device->driver);

	if (!drv->ops->remove)
		return -EINVAL;

	drv->ops->remove(dev);
	return 0;
}