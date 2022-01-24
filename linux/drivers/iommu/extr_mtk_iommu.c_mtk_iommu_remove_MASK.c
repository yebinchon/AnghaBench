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
struct mtk_iommu_data {int /*<<< orphan*/  irq; int /*<<< orphan*/  bclk; int /*<<< orphan*/  iommu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mtk_iommu_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_iommu_com_ops ; 
 int /*<<< orphan*/  platform_bus_type ; 
 struct mtk_iommu_data* FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mtk_iommu_data *data = FUNC7(pdev);

	FUNC4(&data->iommu);
	FUNC5(&data->iommu);

	if (FUNC6(&platform_bus_type))
		FUNC0(&platform_bus_type, NULL);

	FUNC1(data->bclk);
	FUNC3(&pdev->dev, data->irq, data);
	FUNC2(&pdev->dev, &mtk_iommu_com_ops);
	return 0;
}