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
struct hns_roce_srq_table {int /*<<< orphan*/  xa; } ;
struct hns_roce_srq {int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; int /*<<< orphan*/  (* event ) (struct hns_roce_srq*,int) ;} ;
struct TYPE_2__ {int num_srqs; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; TYPE_1__ caps; struct hns_roce_srq_table srq_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_srq*,int) ; 
 struct hns_roce_srq* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct hns_roce_dev *hr_dev, u32 srqn, int event_type)
{
	struct hns_roce_srq_table *srq_table = &hr_dev->srq_table;
	struct hns_roce_srq *srq;

	FUNC6(&srq_table->xa);
	srq = FUNC5(&srq_table->xa, srqn & (hr_dev->caps.num_srqs - 1));
	if (srq)
		FUNC1(&srq->refcount);
	FUNC7(&srq_table->xa);

	if (!srq) {
		FUNC3(hr_dev->dev, "Async event for bogus SRQ %08x\n", srqn);
		return;
	}

	srq->event(srq, event_type);

	if (FUNC0(&srq->refcount))
		FUNC2(&srq->free);
}