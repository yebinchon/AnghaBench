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
struct TYPE_2__ {struct drm_panel* panel; } ;
struct rockchip_dp_device {TYPE_1__ plat_data; int /*<<< orphan*/  adp; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 struct rockchip_dp_device* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct drm_panel**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct rockchip_dp_device*) ; 
 int /*<<< orphan*/  rockchip_dp_component_ops ; 
 int FUNC5 (struct rockchip_dp_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct drm_panel *panel = NULL;
	struct rockchip_dp_device *dp;
	int ret;

	ret = FUNC3(dev->of_node, 1, 0, &panel, NULL);
	if (ret < 0)
		return ret;

	dp = FUNC2(dev, sizeof(*dp), GFP_KERNEL);
	if (!dp)
		return -ENOMEM;

	dp->dev = dev;
	dp->adp = FUNC0(-ENODEV);
	dp->plat_data.panel = panel;

	ret = FUNC5(dp);
	if (ret < 0)
		return ret;

	FUNC4(pdev, dp);

	return FUNC1(dev, &rockchip_dp_component_ops);
}