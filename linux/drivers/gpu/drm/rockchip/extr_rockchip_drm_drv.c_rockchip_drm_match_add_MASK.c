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
struct platform_driver {int /*<<< orphan*/  driver; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_FLAG_STATELESS ; 
 int /*<<< orphan*/  ENODEV ; 
 struct component_match* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct component_match*) ; 
 int /*<<< orphan*/  compare_dev ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct component_match**,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct device*,int /*<<< orphan*/ ) ; 
 int num_rockchip_sub_drivers ; 
 struct device* FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct platform_driver** rockchip_sub_drivers ; 

__attribute__((used)) static struct component_match *FUNC7(struct device *dev)
{
	struct component_match *match = NULL;
	int i;

	for (i = 0; i < num_rockchip_sub_drivers; i++) {
		struct platform_driver *drv = rockchip_sub_drivers[i];
		struct device *p = NULL, *d;

		do {
			d = FUNC4(p, &drv->driver);
			FUNC5(p);
			p = d;

			if (!d)
				break;

			FUNC3(dev, d, DL_FLAG_STATELESS);
			FUNC2(dev, &match, compare_dev, d);
		} while (true);
	}

	if (FUNC1(match))
		FUNC6(dev);

	return match ?: FUNC0(-ENODEV);
}