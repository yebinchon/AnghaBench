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
struct dsi_data {int vdds_dsi_enabled; int /*<<< orphan*/ * vdds_dsi_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dsi_component_ops ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dsi_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct dsi_data *dsi = FUNC3(pdev);

	FUNC0(&pdev->dev, &dsi_component_ops);

	FUNC1(dsi);

	FUNC2(&pdev->dev);

	FUNC4(&pdev->dev);

	if (dsi->vdds_dsi_reg != NULL && dsi->vdds_dsi_enabled) {
		FUNC5(dsi->vdds_dsi_reg);
		dsi->vdds_dsi_enabled = false;
	}

	return 0;
}