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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fsl_qdma_queue {int n_cq; int /*<<< orphan*/  bus_addr; int /*<<< orphan*/  cq; } ;
struct fsl_qdma_format {int dummy; } ;
struct fsl_qdma_engine {int block_number; struct fsl_qdma_queue** status; int /*<<< orphan*/  dma_dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct fsl_qdma_engine*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct fsl_qdma_engine* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int i;
	struct fsl_qdma_queue *status;
	struct device_node *np = pdev->dev.of_node;
	struct fsl_qdma_engine *fsl_qdma = FUNC5(pdev);

	FUNC3(pdev, fsl_qdma);
	FUNC2(&fsl_qdma->dma_dev);
	FUNC4(np);
	FUNC0(&fsl_qdma->dma_dev);

	for (i = 0; i < fsl_qdma->block_number; i++) {
		status = fsl_qdma->status[i];
		FUNC1(&pdev->dev, sizeof(struct fsl_qdma_format) *
				status->n_cq, status->cq, status->bus_addr);
	}
	return 0;
}