#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fsl_edma_engine {TYPE_2__* drvdata; int /*<<< orphan*/  dma_dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmamuxs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_edma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct fsl_edma_engine*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct fsl_edma_engine* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct fsl_edma_engine *fsl_edma = FUNC5(pdev);

	FUNC3(pdev, fsl_edma);
	FUNC2(&fsl_edma->dma_dev);
	FUNC4(np);
	FUNC0(&fsl_edma->dma_dev);
	FUNC1(fsl_edma, fsl_edma->drvdata->dmamuxs);

	return 0;
}