#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,struct component_match*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  tilcdc_comp_ops ; 
 int /*<<< orphan*/  tilcdc_driver ; 
 int FUNC2 (TYPE_1__*,struct component_match**) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct component_match *match = NULL;
	int ret;

	/* bail out early if no DT data: */
	if (!pdev->dev.of_node) {
		FUNC1(&pdev->dev, "device-tree data is missing\n");
		return -ENXIO;
	}

	ret = FUNC2(&pdev->dev, &match);
	if (ret < 0)
		return ret;
	else if (ret == 0)
		return FUNC3(&tilcdc_driver, &pdev->dev);
	else
		return FUNC0(&pdev->dev,
						       &tilcdc_comp_ops,
						       match);
}