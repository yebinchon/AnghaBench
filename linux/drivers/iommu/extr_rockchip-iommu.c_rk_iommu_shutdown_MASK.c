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
struct rk_iommu {int num_irq; int /*<<< orphan*/  dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct rk_iommu*) ; 
 struct rk_iommu* FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct platform_device *pdev)
{
	struct rk_iommu *iommu = FUNC1(pdev);
	int i;

	for (i = 0; i < iommu->num_irq; i++) {
		int irq = FUNC2(pdev, i);

		FUNC0(iommu->dev, irq, iommu);
	}

	FUNC3(&pdev->dev);
}