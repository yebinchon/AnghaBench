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
struct fsl_qdma_engine {int block_number; int /*<<< orphan*/ * queue_irq; int /*<<< orphan*/  error_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fsl_qdma_engine*) ; 

__attribute__((used)) static void FUNC1(struct platform_device *pdev,
			      struct fsl_qdma_engine *fsl_qdma)
{
	int i;

	FUNC0(&pdev->dev, fsl_qdma->error_irq, fsl_qdma);
	for (i = 0; i < fsl_qdma->block_number; i++)
		FUNC0(&pdev->dev, fsl_qdma->queue_irq[i], fsl_qdma);
}