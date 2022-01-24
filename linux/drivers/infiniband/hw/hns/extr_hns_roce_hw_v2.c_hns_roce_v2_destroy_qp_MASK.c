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
struct ib_udata {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {scalar_t__ qp_type; } ;
struct hns_roce_qp {TYPE_1__ ibqp; int /*<<< orphan*/  qpn; } ;
struct hns_roce_dev {int /*<<< orphan*/  ib_dev; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_GSI ; 
 int FUNC0 (struct hns_roce_dev*,struct hns_roce_qp*,struct ib_udata*) ; 
 struct hns_roce_qp* FUNC1 (struct hns_roce_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_qp*) ; 
 struct hns_roce_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct hns_roce_qp* FUNC5 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC6(struct ib_qp *ibqp, struct ib_udata *udata)
{
	struct hns_roce_dev *hr_dev = FUNC4(ibqp->device);
	struct hns_roce_qp *hr_qp = FUNC5(ibqp);
	int ret;

	ret = FUNC0(hr_dev, hr_qp, udata);
	if (ret) {
		FUNC2(&hr_dev->ib_dev, "Destroy qp 0x%06lx failed(%d)\n",
			  hr_qp->qpn, ret);
		return ret;
	}

	if (hr_qp->ibqp.qp_type == IB_QPT_GSI)
		FUNC3(FUNC1(hr_qp));
	else
		FUNC3(hr_qp);

	return 0;
}