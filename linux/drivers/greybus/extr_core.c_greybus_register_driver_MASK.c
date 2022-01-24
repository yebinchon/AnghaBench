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
struct module {int dummy; } ;
struct TYPE_2__ {char const* mod_name; struct module* owner; int /*<<< orphan*/  remove; int /*<<< orphan*/  probe; int /*<<< orphan*/  name; int /*<<< orphan*/ * bus; } ;
struct greybus_driver {int /*<<< orphan*/  name; TYPE_1__ driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  greybus_bus_type ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  greybus_probe ; 
 int /*<<< orphan*/  greybus_remove ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int FUNC3(struct greybus_driver *driver, struct module *owner,
			    const char *mod_name)
{
	int retval;

	if (FUNC1())
		return -ENODEV;

	driver->driver.bus = &greybus_bus_type;
	driver->driver.name = driver->name;
	driver->driver.probe = greybus_probe;
	driver->driver.remove = greybus_remove;
	driver->driver.owner = owner;
	driver->driver.mod_name = mod_name;

	retval = FUNC0(&driver->driver);
	if (retval)
		return retval;

	FUNC2("registered new driver %s\n", driver->name);
	return 0;
}