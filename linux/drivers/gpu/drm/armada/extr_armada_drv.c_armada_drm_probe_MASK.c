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
struct device {char** platform_data; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct component_match**,scalar_t__) ; 
 int /*<<< orphan*/  armada_master_ops ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  compare_dev_name ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *,struct component_match*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct component_match**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct component_match *match = NULL;
	struct device *dev = &pdev->dev;
	int ret;

	ret = FUNC5(dev, compare_dev_name, &armada_master_ops);
	if (ret != -EINVAL)
		return ret;

	if (dev->platform_data) {
		char **devices = dev->platform_data;
		struct device *d;
		int i;

		for (i = 0; devices[i]; i++)
			FUNC3(dev, &match, compare_dev_name,
					    devices[i]);

		if (i == 0) {
			FUNC4(dev, "missing 'ports' property\n");
			return -ENODEV;
		}

		for (i = 0; devices[i]; i++) {
			d = FUNC1(&platform_bus_type, NULL,
						    devices[i]);
			if (d && d->of_node)
				FUNC0(dev, &match, d->of_node);
			FUNC6(d);
		}
	}

	return FUNC2(&pdev->dev, &armada_master_ops,
					       match);
}