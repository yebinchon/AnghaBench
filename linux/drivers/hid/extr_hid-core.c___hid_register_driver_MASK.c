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
struct TYPE_2__ {char const* mod_name; struct module* owner; int /*<<< orphan*/ * bus; int /*<<< orphan*/  name; } ;
struct hid_driver {TYPE_1__ driver; int /*<<< orphan*/  dyn_lock; int /*<<< orphan*/  dyn_list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __hid_bus_driver_added ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  hid_bus_type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct hid_driver *hdrv, struct module *owner,
		const char *mod_name)
{
	int ret;

	hdrv->driver.name = hdrv->name;
	hdrv->driver.bus = &hid_bus_type;
	hdrv->driver.owner = owner;
	hdrv->driver.mod_name = mod_name;

	FUNC0(&hdrv->dyn_list);
	FUNC3(&hdrv->dyn_lock);

	ret = FUNC2(&hdrv->driver);

	if (ret == 0)
		FUNC1(&hid_bus_type, NULL, NULL,
				 __hid_bus_driver_added);

	return ret;
}