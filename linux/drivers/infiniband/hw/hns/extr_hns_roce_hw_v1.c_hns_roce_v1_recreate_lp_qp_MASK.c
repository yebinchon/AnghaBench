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
struct hns_roce_free_mr {int /*<<< orphan*/  free_mr_wq; } ;
struct hns_roce_v1_priv {struct hns_roce_free_mr free_mr; } ;
struct hns_roce_recreate_lp_qp_work {int comp_flag; int /*<<< orphan*/  work; struct completion* comp; int /*<<< orphan*/ * ib_dev; } ;
struct hns_roce_dev {int /*<<< orphan*/  ib_dev; scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 long HNS_ROCE_V1_RECREATE_LP_QP_TIMEOUT_MSECS ; 
 scalar_t__ HNS_ROCE_V1_RECREATE_LP_QP_WAIT_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  hns_roce_v1_recreate_lp_qp_work_fn ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 
 struct hns_roce_recreate_lp_qp_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct completion*) ; 

__attribute__((used)) static int FUNC7(struct hns_roce_dev *hr_dev)
{
	struct device *dev = &hr_dev->pdev->dev;
	struct hns_roce_recreate_lp_qp_work *lp_qp_work;
	struct hns_roce_free_mr *free_mr;
	struct hns_roce_v1_priv *priv;
	struct completion comp;
	long end = HNS_ROCE_V1_RECREATE_LP_QP_TIMEOUT_MSECS;

	priv = (struct hns_roce_v1_priv *)hr_dev->priv;
	free_mr = &priv->free_mr;

	lp_qp_work = FUNC3(sizeof(struct hns_roce_recreate_lp_qp_work),
			     GFP_KERNEL);
	if (!lp_qp_work)
		return -ENOMEM;

	FUNC0(&(lp_qp_work->work), hns_roce_v1_recreate_lp_qp_work_fn);

	lp_qp_work->ib_dev = &(hr_dev->ib_dev);
	lp_qp_work->comp = &comp;
	lp_qp_work->comp_flag = 1;

	FUNC2(lp_qp_work->comp);

	FUNC5(free_mr->free_mr_wq, &(lp_qp_work->work));

	while (end > 0) {
		if (FUNC6(&comp))
			return 0;
		FUNC4(HNS_ROCE_V1_RECREATE_LP_QP_WAIT_VALUE);
		end -= HNS_ROCE_V1_RECREATE_LP_QP_WAIT_VALUE;
	}

	lp_qp_work->comp_flag = 0;
	if (FUNC6(&comp))
		return 0;

	FUNC1(dev, "recreate lp qp failed 20s timeout and return failed!\n");
	return -ETIMEDOUT;
}