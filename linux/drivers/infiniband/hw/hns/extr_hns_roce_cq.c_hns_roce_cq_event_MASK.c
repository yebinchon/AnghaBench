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
typedef  int u32 ;
struct TYPE_2__ {int num_cqs; } ;
struct hns_roce_cq_table {int /*<<< orphan*/  array; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; struct hns_roce_cq_table cq_table; } ;
struct hns_roce_cq {int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; int /*<<< orphan*/  (* event ) (struct hns_roce_cq*,int) ;} ;
struct device {int dummy; } ;
typedef  enum hns_roce_event { ____Placeholder_hns_roce_event } hns_roce_event ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_cq*,int) ; 
 struct hns_roce_cq* FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(struct hns_roce_dev *hr_dev, u32 cqn, int event_type)
{
	struct hns_roce_cq_table *cq_table = &hr_dev->cq_table;
	struct device *dev = hr_dev->dev;
	struct hns_roce_cq *cq;

	cq = FUNC5(&cq_table->array, cqn & (hr_dev->caps.num_cqs - 1));
	if (cq)
		FUNC1(&cq->refcount);

	if (!cq) {
		FUNC3(dev, "Async event for bogus CQ %08x\n", cqn);
		return;
	}

	cq->event(cq, (enum hns_roce_event)event_type);

	if (FUNC0(&cq->refcount))
		FUNC2(&cq->free);
}