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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * enable_counts; } ;
struct dpu_kms {TYPE_1__ irq_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int EINVAL ; 
 int FUNC2 (struct dpu_kms*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct dpu_kms *dpu_kms, int *irq_idxs, u32 irq_count)
{
	int i, ret = 0, counts;

	if (!dpu_kms || !irq_idxs || !irq_count) {
		FUNC0("invalid params\n");
		return -EINVAL;
	}

	counts = FUNC3(&dpu_kms->irq_obj.enable_counts[irq_idxs[0]]);
	if (counts == 2)
		FUNC1("irq_idx=%d enable_count=%d\n", irq_idxs[0], counts);

	for (i = 0; (i < irq_count) && !ret; i++)
		ret = FUNC2(dpu_kms, irq_idxs[i]);

	return ret;
}