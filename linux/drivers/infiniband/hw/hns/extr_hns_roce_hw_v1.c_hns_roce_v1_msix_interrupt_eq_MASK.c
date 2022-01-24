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
struct hns_roce_eq {scalar_t__ type_flag; struct hns_roce_dev* hr_dev; } ;
struct hns_roce_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ HNS_ROCE_CEQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct hns_roce_dev*,struct hns_roce_eq*) ; 
 int FUNC2 (struct hns_roce_dev*,struct hns_roce_eq*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *eq_ptr)
{
	struct hns_roce_eq  *eq  = eq_ptr;
	struct hns_roce_dev *hr_dev = eq->hr_dev;
	int int_work = 0;

	if (eq->type_flag == HNS_ROCE_CEQ)
		/* CEQ irq routine, CEQ is pulse irq, not clear */
		int_work = FUNC2(hr_dev, eq);
	else
		/* AEQ irq routine, AEQ is pulse irq, not clear */
		int_work = FUNC1(hr_dev, eq);

	return FUNC0(int_work);
}