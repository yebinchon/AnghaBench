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
struct device_driver {char const* mod_name; int /*<<< orphan*/  name; int /*<<< orphan*/  remove; int /*<<< orphan*/  probe; struct module* owner; int /*<<< orphan*/ * bus; } ;
struct rmi_function_handler {struct device_driver driver; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rmi_bus_type ; 
 int /*<<< orphan*/  rmi_function_probe ; 
 int /*<<< orphan*/  rmi_function_remove ; 

int FUNC2(struct rmi_function_handler *handler,
				     struct module *owner,
				     const char *mod_name)
{
	struct device_driver *driver = &handler->driver;
	int error;

	driver->bus = &rmi_bus_type;
	driver->owner = owner;
	driver->mod_name = mod_name;
	driver->probe = rmi_function_probe;
	driver->remove = rmi_function_remove;

	error = FUNC0(driver);
	if (error) {
		FUNC1("driver_register() failed for %s, error: %d\n",
			driver->name, error);
		return error;
	}

	return 0;
}