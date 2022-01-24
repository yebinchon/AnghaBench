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
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  submit; } ;
struct cppi41_dd {scalar_t__ ctrl_mem; TYPE_1__ td_queue; scalar_t__ qmgr_mem; int /*<<< orphan*/  scratch_phys; int /*<<< orphan*/  qmgr_scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DMA_TDFDQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ QMGR_LRAM0_BASE ; 
 scalar_t__ QMGR_LRAM1_BASE ; 
 scalar_t__ QMGR_LRAM_SIZE ; 
 int QMGR_SCRATCH_SIZE ; 
 int /*<<< orphan*/  TOTAL_DESCS_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct cppi41_dd*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,struct cppi41_dd*) ; 
 int /*<<< orphan*/  FUNC5 (struct cppi41_dd*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct cppi41_dd *cdd)
{
	int ret;

	FUNC0(QMGR_SCRATCH_SIZE > ((1 << 14) - 1));
	cdd->qmgr_scratch = FUNC3(dev, QMGR_SCRATCH_SIZE,
			&cdd->scratch_phys, GFP_KERNEL);
	if (!cdd->qmgr_scratch)
		return -ENOMEM;

	FUNC1(cdd->scratch_phys, cdd->qmgr_mem + QMGR_LRAM0_BASE);
	FUNC1(TOTAL_DESCS_NUM, cdd->qmgr_mem + QMGR_LRAM_SIZE);
	FUNC1(0, cdd->qmgr_mem + QMGR_LRAM1_BASE);

	ret = FUNC4(dev, cdd);
	if (ret)
		goto err_td;

	FUNC1(cdd->td_queue.submit, cdd->ctrl_mem + DMA_TDFDQ);
	FUNC5(cdd);

	return 0;
err_td:
	FUNC2(dev, cdd);
	return ret;
}