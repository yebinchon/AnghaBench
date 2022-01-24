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
struct module {int dummy; } ;
struct device_driver {char const* name; char const* mod_name; int /*<<< orphan*/ * bus; struct module* owner; } ;
struct dax_device_driver {scalar_t__ match_always; int /*<<< orphan*/  ids; struct device_driver drv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dax_bus_lock ; 
 int /*<<< orphan*/  dax_bus_type ; 
 int FUNC2 (struct device_driver*) ; 
 int match_always_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dax_device_driver *dax_drv,
		struct module *module, const char *mod_name)
{
	struct device_driver *drv = &dax_drv->drv;
	int rc = 0;

	FUNC0(&dax_drv->ids);
	drv->owner = module;
	drv->name = mod_name;
	drv->mod_name = mod_name;
	drv->bus = &dax_bus_type;

	/* there can only be one default driver */
	FUNC3(&dax_bus_lock);
	match_always_count += dax_drv->match_always;
	if (match_always_count > 1) {
		match_always_count--;
		FUNC1(1);
		rc = -EINVAL;
	}
	FUNC4(&dax_bus_lock);
	if (rc)
		return rc;
	return FUNC2(drv);
}