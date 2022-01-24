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
struct intel_th_driver {int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; } ;
struct intel_th_device {scalar_t__ type; int /*<<< orphan*/  name; } ;
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ INTEL_TH_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_th_device* FUNC1 (struct device*) ; 
 struct intel_th_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *driver)
{
	struct intel_th_driver *thdrv = FUNC2(driver);
	struct intel_th_device *thdev = FUNC1(dev);

	if (thdev->type == INTEL_TH_SWITCH &&
	    (!thdrv->enable || !thdrv->disable))
		return 0;

	return !FUNC0(thdev->name, driver->name);
}