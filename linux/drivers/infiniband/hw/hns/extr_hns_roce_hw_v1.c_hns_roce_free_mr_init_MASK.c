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
struct hns_roce_dev {scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hns_roce_dev*) ; 

__attribute__((used)) static int FUNC5(struct hns_roce_dev *hr_dev)
{
	struct device *dev = &hr_dev->pdev->dev;
	struct hns_roce_free_mr *free_mr;
	struct hns_roce_v1_priv *priv;
	int ret = 0;

	priv = (struct hns_roce_v1_priv *)hr_dev->priv;
	free_mr = &priv->free_mr;

	free_mr->free_mr_wq = FUNC0("hns_roce_free_mr");
	if (!free_mr->free_mr_wq) {
		FUNC2(dev, "Create free mr workqueue failed!\n");
		return -ENOMEM;
	}

	ret = FUNC4(hr_dev);
	if (ret) {
		FUNC2(dev, "Reserved loop qp failed(%d)!\n", ret);
		FUNC3(free_mr->free_mr_wq);
		FUNC1(free_mr->free_mr_wq);
	}

	return ret;
}