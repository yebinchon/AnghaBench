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
struct greybus_driver {int /*<<< orphan*/  id_table; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_bundle {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct greybus_bundle_id* FUNC0 (struct gb_bundle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct gb_bundle* FUNC2 (struct device*) ; 
 struct greybus_driver* FUNC3 (struct device_driver*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device_driver *drv)
{
	struct greybus_driver *driver = FUNC3(drv);
	struct gb_bundle *bundle;
	const struct greybus_bundle_id *id;

	if (!FUNC1(dev))
		return 0;

	bundle = FUNC2(dev);

	id = FUNC0(bundle, driver->id_table);
	if (id)
		return 1;
	/* FIXME - Dynamic ids? */
	return 0;
}