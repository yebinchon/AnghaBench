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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int skip_connector; struct drm_panel* panel; } ;
struct exynos_dp_device {struct drm_bridge* ptn_bridge; TYPE_1__ plat_data; } ;
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct drm_panel*) ; 
 int FUNC1 (struct drm_panel*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 struct exynos_dp_device* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_panel**,struct drm_bridge**) ; 
 int /*<<< orphan*/  exynos_dp_ops ; 
 struct drm_panel* FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct exynos_dp_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np;
	struct exynos_dp_device *dp;
	struct drm_panel *panel;
	struct drm_bridge *bridge;
	int ret;

	dp = FUNC3(&pdev->dev, sizeof(struct exynos_dp_device),
			  GFP_KERNEL);
	if (!dp)
		return -ENOMEM;

	/*
	 * We just use the drvdata until driver run into component
	 * add function, and then we would set drvdata to null, so
	 * that analogix dp driver would take charge of the drvdata.
	 */
	FUNC8(pdev, dp);

	/* This is for the backward compatibility. */
	np = FUNC7(dev->of_node, "panel", 0);
	if (np) {
		dp->plat_data.panel = FUNC5(np);

		FUNC6(np);
		if (FUNC0(dp->plat_data.panel))
			return FUNC1(dp->plat_data.panel);

		goto out;
	}

	ret = FUNC4(dev->of_node, 0, 0, &panel, &bridge);
	if (ret)
		return ret;

	/* The remote port can be either a panel or a bridge */
	dp->plat_data.panel = panel;
	dp->plat_data.skip_connector = !!bridge;
	dp->ptn_bridge = bridge;

out:
	return FUNC2(&pdev->dev, &exynos_dp_ops);
}