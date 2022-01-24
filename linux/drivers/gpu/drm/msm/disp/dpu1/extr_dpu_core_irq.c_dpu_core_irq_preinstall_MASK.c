#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct msm_drm_private {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_8__ {int total_irqs; int /*<<< orphan*/ * irq_counts; int /*<<< orphan*/ * enable_counts; int /*<<< orphan*/ * irq_cb_tbl; int /*<<< orphan*/  cb_lock; } ;
struct dpu_kms {TYPE_4__ irq_obj; TYPE_3__* hw_intr; TYPE_2__* pdev; TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_7__ {int irq_idx_tbl_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_kms*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpu_kms*) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct dpu_kms *dpu_kms)
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
	FUNC3(dpu_kms);
	FUNC4(dpu_kms);
	FUNC7(&dpu_kms->pdev->dev);

	FUNC8(&dpu_kms->irq_obj.cb_lock);

	/* Create irq callbacks for all possible irq_idx */
	dpu_kms->irq_obj.total_irqs = dpu_kms->hw_intr->irq_idx_tbl_size;
	dpu_kms->irq_obj.irq_cb_tbl = FUNC5(dpu_kms->irq_obj.total_irqs,
			sizeof(struct list_head), GFP_KERNEL);
	dpu_kms->irq_obj.enable_counts = FUNC5(dpu_kms->irq_obj.total_irqs,
			sizeof(atomic_t), GFP_KERNEL);
	dpu_kms->irq_obj.irq_counts = FUNC5(dpu_kms->irq_obj.total_irqs,
			sizeof(atomic_t), GFP_KERNEL);
	for (i = 0; i < dpu_kms->irq_obj.total_irqs; i++) {
		FUNC1(&dpu_kms->irq_obj.irq_cb_tbl[i]);
		FUNC2(&dpu_kms->irq_obj.enable_counts[i], 0);
		FUNC2(&dpu_kms->irq_obj.irq_counts[i], 0);
	}
}