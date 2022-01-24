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
struct device {int dummy; } ;
struct dax_device_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dax_device_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dax_bus_lock ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dax_device_driver *dax_drv, struct device *dev)
{
	int match;

	FUNC2(&dax_bus_lock);
	match = !!FUNC0(dax_drv, FUNC1(dev));
	FUNC3(&dax_bus_lock);

	return match;
}