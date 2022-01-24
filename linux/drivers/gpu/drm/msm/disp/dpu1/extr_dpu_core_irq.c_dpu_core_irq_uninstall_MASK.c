#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct msm_drm_private {int dummy; } ;
struct TYPE_6__ {int total_irqs; int /*<<< orphan*/ * irq_counts; int /*<<< orphan*/ * enable_counts; int /*<<< orphan*/ * irq_cb_tbl; } ;
struct dpu_kms {TYPE_3__ irq_obj; TYPE_2__* pdev; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_kms*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_kms*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct dpu_kms *dpu_kms)
{
	struct msm_drm_private *priv;
	int i;

	if (!dpu_kms->dev) {
		FUNC0("invalid drm device\n");
		return;
	} else if (!dpu_kms->dev->dev_private) {
		FUNC0("invalid device private\n");
		return;
	}
	priv = dpu_kms->dev->dev_private;

	FUNC6(&dpu_kms->pdev->dev);
	for (i = 0; i < dpu_kms->irq_obj.total_irqs; i++)
		if (FUNC1(&dpu_kms->irq_obj.enable_counts[i]) ||
				!FUNC5(&dpu_kms->irq_obj.irq_cb_tbl[i]))
			FUNC0("irq_idx=%d still enabled/registered\n", i);

	FUNC2(dpu_kms);
	FUNC3(dpu_kms);
	FUNC7(&dpu_kms->pdev->dev);

	FUNC4(dpu_kms->irq_obj.irq_cb_tbl);
	FUNC4(dpu_kms->irq_obj.enable_counts);
	FUNC4(dpu_kms->irq_obj.irq_counts);
	dpu_kms->irq_obj.irq_cb_tbl = NULL;
	dpu_kms->irq_obj.enable_counts = NULL;
	dpu_kms->irq_obj.irq_counts = NULL;
	dpu_kms->irq_obj.total_irqs = 0;
}