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
struct mmp_pdma_phy {int dma_channels; int /*<<< orphan*/  device; struct mmp_pdma_phy* phy; } ;
struct mmp_pdma_device {int dma_channels; int /*<<< orphan*/  device; struct mmp_pdma_device* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct mmp_pdma_phy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mmp_pdma_phy* FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*,int) ; 

__attribute__((used)) static int FUNC4(struct platform_device *op)
{
	struct mmp_pdma_device *pdev = FUNC2(op);
	struct mmp_pdma_phy *phy;
	int i, irq = 0, irq_num = 0;


	for (i = 0; i < pdev->dma_channels; i++) {
		if (FUNC3(op, i) > 0)
			irq_num++;
	}

	if (irq_num != pdev->dma_channels) {
		irq = FUNC3(op, 0);
		FUNC0(&op->dev, irq, pdev);
	} else {
		for (i = 0; i < pdev->dma_channels; i++) {
			phy = &pdev->phy[i];
			irq = FUNC3(op, i);
			FUNC0(&op->dev, irq, phy);
		}
	}

	FUNC1(&pdev->device);
	return 0;
}