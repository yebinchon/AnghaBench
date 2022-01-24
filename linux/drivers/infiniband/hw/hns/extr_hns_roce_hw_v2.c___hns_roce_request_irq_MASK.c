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
struct hns_roce_eq_table {struct hns_roce_dev* eq; } ;
struct hns_roce_dev {scalar_t__* irq_names; int /*<<< orphan*/ *** irq; int /*<<< orphan*/  dev; struct hns_roce_eq_table eq_table; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HNS_ROCE_INT_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,struct hns_roce_dev*) ; 
 int /*<<< orphan*/  hns_roce_v2_msix_interrupt_abn ; 
 int /*<<< orphan*/  hns_roce_v2_msix_interrupt_eq ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(struct hns_roce_dev *hr_dev, int irq_num,
				  int comp_num, int aeq_num, int other_num)
{
	struct hns_roce_eq_table *eq_table = &hr_dev->eq_table;
	int i, j;
	int ret;

	for (i = 0; i < irq_num; i++) {
		hr_dev->irq_names[i] = FUNC3(HNS_ROCE_INT_NAME_LEN,
					       GFP_KERNEL);
		if (!hr_dev->irq_names[i]) {
			ret = -ENOMEM;
			goto err_kzalloc_failed;
		}
	}

	/* irq contains: abnormal + AEQ + CEQ */
	for (j = 0; j < other_num; j++)
		FUNC5((char *)hr_dev->irq_names[j],
			 HNS_ROCE_INT_NAME_LEN, "hns-abn-%d", j);

	for (j = other_num; j < (other_num + aeq_num); j++)
		FUNC5((char *)hr_dev->irq_names[j],
			 HNS_ROCE_INT_NAME_LEN, "hns-aeq-%d",
			 j - other_num);

	for (j = (other_num + aeq_num); j < irq_num; j++)
		FUNC5((char *)hr_dev->irq_names[j],
			 HNS_ROCE_INT_NAME_LEN, "hns-ceq-%d",
			 j - other_num - aeq_num);

	for (j = 0; j < irq_num; j++) {
		if (j < other_num)
			ret = FUNC4(hr_dev->irq[j],
					  hns_roce_v2_msix_interrupt_abn,
					  0, hr_dev->irq_names[j], hr_dev);

		else if (j < (other_num + comp_num))
			ret = FUNC4(*eq_table->eq[j - other_num].irq,
					  hns_roce_v2_msix_interrupt_eq,
					  0, hr_dev->irq_names[j + aeq_num],
					  &eq_table->eq[j - other_num]);
		else
			ret = FUNC4(*eq_table->eq[j - other_num].irq,
					  hns_roce_v2_msix_interrupt_eq,
					  0, hr_dev->irq_names[j - comp_num],
					  &eq_table->eq[j - other_num]);
		if (ret) {
			FUNC0(hr_dev->dev, "Request irq error!\n");
			goto err_request_failed;
		}
	}

	return 0;

err_request_failed:
	for (j -= 1; j >= 0; j--)
		if (j < other_num)
			FUNC1(hr_dev->irq[j], hr_dev);
		else
			FUNC1(*eq_table->eq[j - other_num].irq,
				 &eq_table->eq[j - other_num]);

err_kzalloc_failed:
	for (i -= 1; i >= 0; i--)
		FUNC2(hr_dev->irq_names[i]);

	return ret;
}