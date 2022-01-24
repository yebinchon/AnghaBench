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
struct hisi_qp {int dummy; } ;
struct hisi_qm {int qp_num; scalar_t__ fun_type; struct hisi_qp** qp_array; scalar_t__ io_base; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ QM_HW_PF ; 
 scalar_t__ QM_VF_AEQ_INT_MASK ; 
 scalar_t__ QM_VF_EQ_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct hisi_qm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hisi_qp*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

int FUNC5(struct hisi_qm *qm)
{
	struct device *dev;
	struct hisi_qp *qp;
	int ret = 0, i;

	if (!qm || !qm->pdev) {
		FUNC0(1);
		return -EINVAL;
	}

	dev = &qm->pdev->dev;

	/* Mask eq and aeq irq */
	FUNC4(0x1, qm->io_base + QM_VF_EQ_INT_MASK);
	FUNC4(0x1, qm->io_base + QM_VF_AEQ_INT_MASK);

	/* Stop all qps belong to this qm */
	for (i = 0; i < qm->qp_num; i++) {
		qp = qm->qp_array[i];
		if (qp) {
			ret = FUNC3(qp);
			if (ret < 0) {
				FUNC1(dev, "Failed to stop qp%d!\n", i);
				return -EBUSY;
			}
		}
	}

	if (qm->fun_type == QM_HW_PF) {
		ret = FUNC2(qm, 0, 0, 0);
		if (ret < 0)
			FUNC1(dev, "Failed to set vft!\n");
	}

	return ret;
}