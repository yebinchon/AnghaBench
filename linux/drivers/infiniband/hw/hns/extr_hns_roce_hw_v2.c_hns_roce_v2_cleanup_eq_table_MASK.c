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
struct hns_roce_eq_table {int /*<<< orphan*/ * eq; } ;
struct TYPE_2__ {int num_comp_vectors; int num_aeq_vectors; } ;
struct hns_roce_dev {int /*<<< orphan*/  irq_workq; TYPE_1__ caps; struct hns_roce_eq_table eq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  EQ_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct hns_roce_dev *hr_dev)
{
	struct hns_roce_eq_table *eq_table = &hr_dev->eq_table;
	int eq_num;
	int i;

	eq_num = hr_dev->caps.num_comp_vectors + hr_dev->caps.num_aeq_vectors;

	/* Disable irq */
	FUNC5(hr_dev, eq_num, EQ_DISABLE);

	FUNC0(hr_dev);

	for (i = 0; i < eq_num; i++) {
		FUNC3(hr_dev, i);

		FUNC4(hr_dev, &eq_table->eq[i]);
	}

	FUNC6(eq_table->eq);

	FUNC2(hr_dev->irq_workq);
	FUNC1(hr_dev->irq_workq);
}