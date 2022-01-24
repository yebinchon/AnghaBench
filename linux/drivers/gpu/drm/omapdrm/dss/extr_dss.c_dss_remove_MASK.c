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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dss; int /*<<< orphan*/  clk; } ;
struct dss_device {scalar_t__ video2_pll; scalar_t__ video1_pll; TYPE_1__ debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dss_component_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct dss_device* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct dss_device *dss = FUNC8(pdev);

	FUNC7(&pdev->dev);

	FUNC0(&pdev->dev, &dss_component_ops);

	FUNC1(dss->debugfs.clk);
	FUNC1(dss->debugfs.dss);
	FUNC4(dss);

	FUNC9(&pdev->dev);

	FUNC3(dss);

	if (dss->video1_pll)
		FUNC5(dss->video1_pll);

	if (dss->video2_pll)
		FUNC5(dss->video2_pll);

	FUNC2(dss);

	FUNC6(dss);

	return 0;
}