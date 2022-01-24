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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_iommu {int id; int /*<<< orphan*/  syscfg; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev,
					      struct omap_iommu *obj)
{
	struct device_node *np = pdev->dev.of_node;
	int ret;

	if (!FUNC3(np, "ti,dra7-dsp-iommu"))
		return 0;

	if (!FUNC4(np, "ti,syscon-mmuconfig")) {
		FUNC2(&pdev->dev, "ti,syscon-mmuconfig property is missing\n");
		return -EINVAL;
	}

	obj->syscfg =
		FUNC6(np, "ti,syscon-mmuconfig");
	if (FUNC0(obj->syscfg)) {
		/* can fail with -EPROBE_DEFER */
		ret = FUNC1(obj->syscfg);
		return ret;
	}

	if (FUNC5(np, "ti,syscon-mmuconfig", 1,
				       &obj->id)) {
		FUNC2(&pdev->dev, "couldn't get the IOMMU instance id within subsystem\n");
		return -EINVAL;
	}

	if (obj->id != 0 && obj->id != 1) {
		FUNC2(&pdev->dev, "invalid IOMMU instance id\n");
		return -EINVAL;
	}

	return 0;
}