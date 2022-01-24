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
struct hns_roce_eq_table {struct hns_roce_dev* eq; struct hns_roce_dev* eqc_base; } ;
struct TYPE_2__ {int num_comp_vectors; int num_aeq_vectors; int num_other_vectors; } ;
struct hns_roce_dev {int /*<<< orphan*/ * irq; TYPE_1__ caps; struct hns_roce_eq_table eq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  EQ_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*,struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*) ; 

__attribute__((used)) static void FUNC4(struct hns_roce_dev *hr_dev)
{
	struct hns_roce_eq_table *eq_table = &hr_dev->eq_table;
	int irq_num;
	int eq_num;
	int i;

	eq_num = hr_dev->caps.num_comp_vectors + hr_dev->caps.num_aeq_vectors;
	irq_num = eq_num + hr_dev->caps.num_other_vectors;
	for (i = 0; i < eq_num; i++) {
		/* Disable EQ */
		FUNC1(hr_dev, i, EQ_DISABLE);

		FUNC0(hr_dev->irq[i], &eq_table->eq[i]);

		FUNC2(hr_dev, &eq_table->eq[i]);
	}
	for (i = eq_num; i < irq_num; i++)
		FUNC0(hr_dev->irq[i], hr_dev);

	FUNC3(eq_table->eqc_base);
	FUNC3(eq_table->eq);
}