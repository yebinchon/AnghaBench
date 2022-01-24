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
struct hns_roce_free_mr {int /*<<< orphan*/  free_mr_wq; } ;
struct hns_roce_v1_priv {struct hns_roce_free_mr free_mr; } ;
struct hns_roce_dev {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*) ; 

__attribute__((used)) static void FUNC3(struct hns_roce_dev *hr_dev)
{
	struct hns_roce_free_mr *free_mr;
	struct hns_roce_v1_priv *priv;

	priv = (struct hns_roce_v1_priv *)hr_dev->priv;
	free_mr = &priv->free_mr;

	FUNC1(free_mr->free_mr_wq);
	FUNC0(free_mr->free_mr_wq);

	FUNC2(hr_dev);
}