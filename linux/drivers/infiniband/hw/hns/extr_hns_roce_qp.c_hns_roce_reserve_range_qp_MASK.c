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
struct hns_roce_qp_table {int /*<<< orphan*/  bitmap; } ;
struct hns_roce_dev {struct hns_roce_qp_table qp_table; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int,unsigned long*) ; 

__attribute__((used)) static int FUNC1(struct hns_roce_dev *hr_dev, int cnt,
				     int align, unsigned long *base)
{
	struct hns_roce_qp_table *qp_table = &hr_dev->qp_table;

	return FUNC0(&qp_table->bitmap, cnt, align,
					   base) ?
		       -ENOMEM :
		       0;
}