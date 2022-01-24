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
typedef  int /*<<< orphan*/  u32 ;
struct hns_roce_qp {int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; int /*<<< orphan*/  (* event ) (struct hns_roce_qp*,int) ;} ;
struct hns_roce_dev {int /*<<< orphan*/  qp_table_xa; struct device* dev; } ;
struct device {int dummy; } ;
typedef  enum hns_roce_event { ____Placeholder_hns_roce_event } hns_roce_event ;

/* Variables and functions */
 struct hns_roce_qp* FUNC0 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_qp*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct hns_roce_dev *hr_dev, u32 qpn, int event_type)
{
	struct device *dev = hr_dev->dev;
	struct hns_roce_qp *qp;

	FUNC6(&hr_dev->qp_table_xa);
	qp = FUNC0(hr_dev, qpn);
	if (qp)
		FUNC2(&qp->refcount);
	FUNC7(&hr_dev->qp_table_xa);

	if (!qp) {
		FUNC4(dev, "Async event for bogus QP %08x\n", qpn);
		return;
	}

	qp->event(qp, (enum hns_roce_event)event_type);

	if (FUNC1(&qp->refcount))
		FUNC3(&qp->free);
}