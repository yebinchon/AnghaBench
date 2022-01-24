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
struct fw_unit {int dummy; } ;
struct fw_driver {int /*<<< orphan*/  (* update ) (struct fw_unit*) ;} ;
struct device {scalar_t__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct fw_unit* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_unit*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, void *data)
{
	struct fw_unit *unit = FUNC2(dev);
	struct fw_driver *driver = (struct fw_driver *)dev->driver;

	if (FUNC3(dev) && driver != NULL && driver->update != NULL) {
		FUNC0(dev);
		driver->update(unit);
		FUNC1(dev);
	}

	return 0;
}