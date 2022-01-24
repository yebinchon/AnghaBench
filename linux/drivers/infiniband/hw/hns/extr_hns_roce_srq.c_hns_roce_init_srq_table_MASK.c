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
struct hns_roce_srq_table {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  xa; } ;
struct TYPE_2__ {int /*<<< orphan*/  reserved_srqs; scalar_t__ num_srqs; } ;
struct hns_roce_dev {TYPE_1__ caps; struct hns_roce_srq_table srq_table; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct hns_roce_dev *hr_dev)
{
	struct hns_roce_srq_table *srq_table = &hr_dev->srq_table;

	FUNC1(&srq_table->xa);

	return FUNC0(&srq_table->bitmap, hr_dev->caps.num_srqs,
				    hr_dev->caps.num_srqs - 1,
				    hr_dev->caps.reserved_srqs, 0);
}