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
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  used; } ;
struct hisi_qp {int /*<<< orphan*/  qp_id; TYPE_3__ qp_status; TYPE_2__* qm; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QP_STOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct hisi_qp *qp)
{
	struct device *dev = &qp->qm->pdev->dev;
	int i = 0;

	/* it is stopped */
	if (FUNC5(QP_STOP, &qp->qp_status.flags))
		return 0;

	while (FUNC0(&qp->qp_status.used)) {
		i++;
		FUNC3(20);
		if (i == 10) {
			FUNC2(dev, "Cannot drain out data for stopping, Force to stop!\n");
			return 0;
		}
	}

	FUNC4(QP_STOP, &qp->qp_status.flags);

	FUNC1(dev, "stop queue %u!", qp->qp_id);

	return 0;
}