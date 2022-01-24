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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_region {int /*<<< orphan*/  compat_id; struct dfl_fme_region_pdata* priv; } ;
struct fpga_manager {int /*<<< orphan*/  compat_id; } ;
struct dfl_fme_region_pdata {TYPE_1__* mgr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct dfl_fme_region_pdata* FUNC2 (struct device*) ; 
 struct fpga_region* FUNC3 (struct device*,struct fpga_manager*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fme_region_get_bridges ; 
 struct fpga_manager* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fpga_manager*) ; 
 int FUNC6 (struct fpga_region*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct fpga_region*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct dfl_fme_region_pdata *pdata = FUNC2(&pdev->dev);
	struct device *dev = &pdev->dev;
	struct fpga_region *region;
	struct fpga_manager *mgr;
	int ret;

	mgr = FUNC4(&pdata->mgr->dev);
	if (FUNC0(mgr))
		return -EPROBE_DEFER;

	region = FUNC3(dev, mgr, fme_region_get_bridges);
	if (!region) {
		ret = -ENOMEM;
		goto eprobe_mgr_put;
	}

	region->priv = pdata;
	region->compat_id = mgr->compat_id;
	FUNC7(pdev, region);

	ret = FUNC6(region);
	if (ret)
		goto eprobe_mgr_put;

	FUNC1(dev, "DFL FME FPGA Region probed\n");

	return 0;

eprobe_mgr_put:
	FUNC5(mgr);
	return ret;
}