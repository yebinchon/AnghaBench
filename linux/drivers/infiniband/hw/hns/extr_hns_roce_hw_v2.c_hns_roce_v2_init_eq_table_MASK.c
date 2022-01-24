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
struct hns_roce_eq_table {struct hns_roce_eq* eq; } ;
struct hns_roce_eq {int eqn; int /*<<< orphan*/  eq_period; int /*<<< orphan*/  eq_max_cnt; int /*<<< orphan*/  irq; int /*<<< orphan*/  eqe_size; int /*<<< orphan*/  entries; int /*<<< orphan*/  type_flag; struct hns_roce_dev* hr_dev; } ;
struct TYPE_2__ {int num_other_vectors; int num_comp_vectors; int num_aeq_vectors; int /*<<< orphan*/  aeqe_depth; int /*<<< orphan*/  ceqe_depth; } ;
struct hns_roce_dev {int /*<<< orphan*/  irq_workq; int /*<<< orphan*/ * irq; TYPE_1__ caps; struct device* dev; struct hns_roce_eq_table eq_table; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EQ_DISABLE ; 
 int /*<<< orphan*/  EQ_ENABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HNS_ROCE_AEQ ; 
 int /*<<< orphan*/  HNS_ROCE_AEQ_DEFAULT_BURST_NUM ; 
 int /*<<< orphan*/  HNS_ROCE_AEQ_DEFAULT_INTERVAL ; 
 int /*<<< orphan*/  HNS_ROCE_AEQ_ENTRY_SIZE ; 
 int /*<<< orphan*/  HNS_ROCE_CEQ ; 
 int /*<<< orphan*/  HNS_ROCE_CEQ_DEFAULT_BURST_NUM ; 
 int /*<<< orphan*/  HNS_ROCE_CEQ_DEFAULT_INTERVAL ; 
 int /*<<< orphan*/  HNS_ROCE_CEQ_ENTRY_SIZE ; 
 unsigned int HNS_ROCE_CMD_CREATE_AEQC ; 
 unsigned int HNS_ROCE_CMD_CREATE_CEQC ; 
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*) ; 
 int FUNC1 (struct hns_roce_dev*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct hns_roce_dev*,struct hns_roce_eq*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,struct hns_roce_eq*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_dev*,int,int /*<<< orphan*/ ) ; 
 struct hns_roce_eq* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hns_roce_eq*) ; 

__attribute__((used)) static int FUNC9(struct hns_roce_dev *hr_dev)
{
	struct hns_roce_eq_table *eq_table = &hr_dev->eq_table;
	struct device *dev = hr_dev->dev;
	struct hns_roce_eq *eq;
	unsigned int eq_cmd;
	int irq_num;
	int eq_num;
	int other_num;
	int comp_num;
	int aeq_num;
	int i;
	int ret;

	other_num = hr_dev->caps.num_other_vectors;
	comp_num = hr_dev->caps.num_comp_vectors;
	aeq_num = hr_dev->caps.num_aeq_vectors;

	eq_num = comp_num + aeq_num;
	irq_num = eq_num + other_num;

	eq_table->eq = FUNC7(eq_num, sizeof(*eq_table->eq), GFP_KERNEL);
	if (!eq_table->eq)
		return -ENOMEM;

	/* create eq */
	for (i = 0; i < eq_num; i++) {
		eq = &eq_table->eq[i];
		eq->hr_dev = hr_dev;
		eq->eqn = i;
		if (i < comp_num) {
			/* CEQ */
			eq_cmd = HNS_ROCE_CMD_CREATE_CEQC;
			eq->type_flag = HNS_ROCE_CEQ;
			eq->entries = hr_dev->caps.ceqe_depth;
			eq->eqe_size = HNS_ROCE_CEQ_ENTRY_SIZE;
			eq->irq = hr_dev->irq[i + other_num + aeq_num];
			eq->eq_max_cnt = HNS_ROCE_CEQ_DEFAULT_BURST_NUM;
			eq->eq_period = HNS_ROCE_CEQ_DEFAULT_INTERVAL;
		} else {
			/* AEQ */
			eq_cmd = HNS_ROCE_CMD_CREATE_AEQC;
			eq->type_flag = HNS_ROCE_AEQ;
			eq->entries = hr_dev->caps.aeqe_depth;
			eq->eqe_size = HNS_ROCE_AEQ_ENTRY_SIZE;
			eq->irq = hr_dev->irq[i - comp_num + other_num];
			eq->eq_max_cnt = HNS_ROCE_AEQ_DEFAULT_BURST_NUM;
			eq->eq_period = HNS_ROCE_AEQ_DEFAULT_INTERVAL;
		}

		ret = FUNC4(hr_dev, eq, eq_cmd);
		if (ret) {
			FUNC3(dev, "eq create failed.\n");
			goto err_create_eq_fail;
		}
	}

	/* enable irq */
	FUNC6(hr_dev, eq_num, EQ_ENABLE);

	ret = FUNC1(hr_dev, irq_num, comp_num,
				     aeq_num, other_num);
	if (ret) {
		FUNC3(dev, "Request irq failed.\n");
		goto err_request_irq_fail;
	}

	hr_dev->irq_workq =
		FUNC2("hns_roce_irq_workqueue");
	if (!hr_dev->irq_workq) {
		FUNC3(dev, "Create irq workqueue failed!\n");
		ret = -ENOMEM;
		goto err_create_wq_fail;
	}

	return 0;

err_create_wq_fail:
	FUNC0(hr_dev);

err_request_irq_fail:
	FUNC6(hr_dev, eq_num, EQ_DISABLE);

err_create_eq_fail:
	for (i -= 1; i >= 0; i--)
		FUNC5(hr_dev, &eq_table->eq[i]);
	FUNC8(eq_table->eq);

	return ret;
}