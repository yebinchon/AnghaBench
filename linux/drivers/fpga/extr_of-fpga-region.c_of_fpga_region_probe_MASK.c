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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct fpga_region {int /*<<< orphan*/  dev; } ;
struct fpga_manager {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct fpga_region* FUNC2 (struct device*,struct fpga_manager*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fpga_manager*) ; 
 int /*<<< orphan*/  fpga_region_of_match ; 
 int FUNC4 (struct fpga_region*) ; 
 int /*<<< orphan*/  of_fpga_region_get_bridges ; 
 struct fpga_manager* FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct fpga_region*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct fpga_region *region;
	struct fpga_manager *mgr;
	int ret;

	/* Find the FPGA mgr specified by region or parent region. */
	mgr = FUNC5(np);
	if (FUNC0(mgr))
		return -EPROBE_DEFER;

	region = FUNC2(dev, mgr, of_fpga_region_get_bridges);
	if (!region) {
		ret = -ENOMEM;
		goto eprobe_mgr_put;
	}

	ret = FUNC4(region);
	if (ret)
		goto eprobe_mgr_put;

	FUNC6(np, fpga_region_of_match, NULL, &region->dev);
	FUNC7(pdev, region);

	FUNC1(dev, "FPGA Region probed\n");

	return 0;

eprobe_mgr_put:
	FUNC3(mgr);
	return ret;
}