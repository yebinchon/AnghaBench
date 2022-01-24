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
struct device_driver {int dummy; } ;
struct platform_driver {struct device_driver driver; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  compare_dev ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct component_match**,int /*<<< orphan*/ ,struct device*) ; 
 struct device* FUNC1 (struct device*,struct device_driver*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev,
				  struct component_match **match,
				  struct platform_driver *const *drivers,
				  int count)
{
	int i;

	for (i = 0; i < count; i++) {
		struct device_driver *drv = &drivers[i]->driver;
		struct device *p = NULL, *d;

		while ((d = FUNC1(p, drv))) {
			FUNC2(p);
			FUNC0(dev, match, compare_dev, d);
			p = d;
		}
		FUNC2(p);
	}
}