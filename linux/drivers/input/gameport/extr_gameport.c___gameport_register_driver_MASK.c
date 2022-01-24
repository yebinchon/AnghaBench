#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct TYPE_3__ {char const* mod_name; int /*<<< orphan*/  name; struct module* owner; int /*<<< orphan*/ * bus; } ;
struct gameport_driver {int ignore; TYPE_1__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAMEPORT_ATTACH_DRIVER ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  gameport_bus ; 
 int FUNC2 (struct gameport_driver*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct gameport_driver *drv, struct module *owner,
				const char *mod_name)
{
	int error;

	drv->driver.bus = &gameport_bus;
	drv->driver.owner = owner;
	drv->driver.mod_name = mod_name;

	/*
	 * Temporarily disable automatic binding because probing
	 * takes long time and we are better off doing it in kgameportd
	 */
	drv->ignore = true;

	error = FUNC0(&drv->driver);
	if (error) {
		FUNC3("driver_register() failed for %s, error: %d\n",
			drv->driver.name, error);
		return error;
	}

	/*
	 * Reset ignore flag and let kgameportd bind the driver to free ports
	 */
	drv->ignore = false;
	error = FUNC2(drv, NULL, GAMEPORT_ATTACH_DRIVER);
	if (error) {
		FUNC1(&drv->driver);
		return error;
	}

	return 0;
}