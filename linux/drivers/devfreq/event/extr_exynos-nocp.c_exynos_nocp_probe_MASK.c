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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; struct exynos_nocp* driver_data; int /*<<< orphan*/ * ops; } ;
struct exynos_nocp {int /*<<< orphan*/  clk; int /*<<< orphan*/  edev; TYPE_1__ desc; struct device* dev; } ;
struct device_node {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,TYPE_1__*) ; 
 struct exynos_nocp* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exynos_nocp_ops ; 
 int FUNC7 (struct platform_device*,struct exynos_nocp*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct exynos_nocp*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct exynos_nocp *nocp;
	int ret;

	nocp = FUNC6(&pdev->dev, sizeof(*nocp), GFP_KERNEL);
	if (!nocp)
		return -ENOMEM;

	nocp->dev = &pdev->dev;

	/* Parse dt data to get resource */
	ret = FUNC7(pdev, nocp);
	if (ret < 0) {
		FUNC3(&pdev->dev,
			"failed to parse devicetree for resource\n");
		return ret;
	}

	/* Add devfreq-event device to measure the bandwidth of NoC */
	nocp->desc.ops = &exynos_nocp_ops;
	nocp->desc.driver_data = nocp;
	nocp->desc.name = np->full_name;
	nocp->edev = FUNC5(&pdev->dev, &nocp->desc);
	if (FUNC0(nocp->edev)) {
		FUNC3(&pdev->dev,
			"failed to add devfreq-event device\n");
		return FUNC1(nocp->edev);
	}
	FUNC8(pdev, nocp);

	ret = FUNC2(nocp->clk);
	if (ret) {
		FUNC3(&pdev->dev, "failed to prepare ppmu clock\n");
		return ret;
	}

	FUNC9("exynos-nocp: new NoC Probe device registered: %s\n",
			FUNC4(dev));

	return 0;
}