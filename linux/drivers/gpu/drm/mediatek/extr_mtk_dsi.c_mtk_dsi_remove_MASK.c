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
struct mtk_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_dsi_component_ops ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_dsi*) ; 
 struct mtk_dsi* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct mtk_dsi *dsi = FUNC2(pdev);

	FUNC1(dsi);
	FUNC0(&pdev->dev, &mtk_dsi_component_ops);

	return 0;
}