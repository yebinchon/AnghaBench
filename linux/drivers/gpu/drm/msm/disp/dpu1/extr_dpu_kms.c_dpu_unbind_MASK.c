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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dss_module_power {scalar_t__ num_clk; int /*<<< orphan*/  clk_config; } ;
struct dpu_kms {scalar_t__ rpm_enabled; struct dss_module_power mp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct dpu_kms* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC4(dev);
	struct dpu_kms *dpu_kms = FUNC2(pdev);
	struct dss_module_power *mp = &dpu_kms->mp;

	FUNC1(mp->clk_config, mp->num_clk);
	FUNC0(&pdev->dev, mp->clk_config);
	mp->num_clk = 0;

	if (dpu_kms->rpm_enabled)
		FUNC3(&pdev->dev);
}