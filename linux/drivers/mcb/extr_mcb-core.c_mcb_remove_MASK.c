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
struct mcb_driver {int /*<<< orphan*/  (* remove ) (struct mcb_device*) ;} ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct mcb_device {TYPE_3__ dev; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {struct module* owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct module*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcb_device*) ; 
 struct mcb_device* FUNC3 (struct device*) ; 
 struct mcb_driver* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct mcb_driver *mdrv = FUNC4(dev->driver);
	struct mcb_device *mdev = FUNC3(dev);
	struct module *carrier_mod;

	mdrv->remove(mdev);

	carrier_mod = mdev->dev.parent->driver->owner;
	FUNC0(carrier_mod);

	FUNC1(&mdev->dev);

	return 0;
}