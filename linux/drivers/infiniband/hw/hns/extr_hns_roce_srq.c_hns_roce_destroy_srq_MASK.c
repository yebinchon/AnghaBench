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
struct ib_srq {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  umem; int /*<<< orphan*/  mtt; } ;
struct hns_roce_srq {int max; int wqe_shift; int /*<<< orphan*/  umem; TYPE_1__ idx_que; int /*<<< orphan*/  buf; int /*<<< orphan*/  wrid; int /*<<< orphan*/  mtt; } ;
struct hns_roce_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*,struct hns_roce_srq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct hns_roce_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct hns_roce_srq* FUNC6 (struct ib_srq*) ; 

void FUNC7(struct ib_srq *ibsrq, struct ib_udata *udata)
{
	struct hns_roce_dev *hr_dev = FUNC5(ibsrq->device);
	struct hns_roce_srq *srq = FUNC6(ibsrq);

	FUNC2(hr_dev, srq);
	FUNC1(hr_dev, &srq->mtt);

	if (udata) {
		FUNC1(hr_dev, &srq->idx_que.mtt);
	} else {
		FUNC4(srq->wrid);
		FUNC0(hr_dev, srq->max << srq->wqe_shift,
				  &srq->buf);
	}
	FUNC3(srq->idx_que.umem);
	FUNC3(srq->umem);
}