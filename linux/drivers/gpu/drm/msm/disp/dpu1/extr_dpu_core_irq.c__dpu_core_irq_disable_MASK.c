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
struct TYPE_4__ {int /*<<< orphan*/ * enable_counts; } ;
struct dpu_kms {TYPE_3__* hw_intr; TYPE_1__ irq_obj; } ;
struct TYPE_5__ {int (* disable_irq ) (TYPE_3__*,int) ;} ;
struct TYPE_6__ {int irq_idx_tbl_size; TYPE_2__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int EINVAL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct dpu_kms *dpu_kms, int irq_idx)
{
	int ret = 0, enable_count;

	if (!dpu_kms || !dpu_kms->hw_intr || !dpu_kms->irq_obj.enable_counts) {
		FUNC1("invalid params\n");
		return -EINVAL;
	}

	if (irq_idx < 0 || irq_idx >= dpu_kms->hw_intr->irq_idx_tbl_size) {
		FUNC1("invalid IRQ index: [%d]\n", irq_idx);
		return -EINVAL;
	}

	enable_count = FUNC4(&dpu_kms->irq_obj.enable_counts[irq_idx]);
	FUNC2("irq_idx=%d enable_count=%d\n", irq_idx, enable_count);
	FUNC6(irq_idx, enable_count);

	if (FUNC3(&dpu_kms->irq_obj.enable_counts[irq_idx]) == 0) {
		ret = dpu_kms->hw_intr->ops.disable_irq(
				dpu_kms->hw_intr,
				irq_idx);
		if (ret)
			FUNC1("Fail to disable IRQ for irq_idx:%d\n",
					irq_idx);
		FUNC0("irq_idx=%d ret=%d\n", irq_idx, ret);
	}

	return ret;
}