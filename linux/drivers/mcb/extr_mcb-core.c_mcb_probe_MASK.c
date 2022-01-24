#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct mcb_driver {int (* probe ) (struct mcb_device*,struct mcb_device_id const*) ;int /*<<< orphan*/  id_table; } ;
struct mcb_device_id {int dummy; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct mcb_device {TYPE_3__ dev; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {struct module* owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct mcb_device_id* FUNC1 (int /*<<< orphan*/ ,struct mcb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct module*) ; 
 int FUNC3 (struct mcb_device*,struct mcb_device_id const*) ; 
 struct mcb_device* FUNC4 (struct device*) ; 
 struct mcb_driver* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct module*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct mcb_driver *mdrv = FUNC5(dev->driver);
	struct mcb_device *mdev = FUNC4(dev);
	const struct mcb_device_id *found_id;
	struct module *carrier_mod;
	int ret;

	found_id = FUNC1(mdrv->id_table, mdev);
	if (!found_id)
		return -ENODEV;

	carrier_mod = mdev->dev.parent->driver->owner;
	if (!FUNC6(carrier_mod))
		return -EINVAL;

	FUNC0(dev);
	ret = mdrv->probe(mdev, found_id);
	if (ret)
		FUNC2(carrier_mod);

	return ret;
}