#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ib_qp_cap {unsigned int max_recv_wr; int max_recv_sge; } ;
struct TYPE_4__ {scalar_t__ wqe_cnt; int max_gs; scalar_t__ max_post; void* wqe_shift; } ;
struct hns_roce_qp {TYPE_2__ rq; } ;
struct TYPE_3__ {unsigned int max_wqes; int max_rq_sg; int min_wqes; int max_rq_desc_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned int,int) ; 
 void* FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct hns_roce_dev *hr_dev,
				struct ib_qp_cap *cap, bool is_user, int has_rq,
				struct hns_roce_qp *hr_qp)
{
	struct device *dev = hr_dev->dev;
	u32 max_cnt;

	/* Check the validity of QP support capacity */
	if (cap->max_recv_wr > hr_dev->caps.max_wqes ||
	    cap->max_recv_sge > hr_dev->caps.max_rq_sg) {
		FUNC0(dev, "RQ WR or sge error!max_recv_wr=%d max_recv_sge=%d\n",
			cap->max_recv_wr, cap->max_recv_sge);
		return -EINVAL;
	}

	/* If srq exist, set zero for relative number of rq */
	if (!has_rq) {
		hr_qp->rq.wqe_cnt = 0;
		hr_qp->rq.max_gs = 0;
		cap->max_recv_wr = 0;
		cap->max_recv_sge = 0;
	} else {
		if (is_user && (!cap->max_recv_wr || !cap->max_recv_sge)) {
			FUNC0(dev, "user space no need config max_recv_wr max_recv_sge\n");
			return -EINVAL;
		}

		if (hr_dev->caps.min_wqes)
			max_cnt = FUNC2(cap->max_recv_wr, hr_dev->caps.min_wqes);
		else
			max_cnt = cap->max_recv_wr;

		hr_qp->rq.wqe_cnt = FUNC3(max_cnt);

		if ((u32)hr_qp->rq.wqe_cnt > hr_dev->caps.max_wqes) {
			FUNC0(dev, "while setting rq size, rq.wqe_cnt too large\n");
			return -EINVAL;
		}

		max_cnt = FUNC2(1U, cap->max_recv_sge);
		hr_qp->rq.max_gs = FUNC3(max_cnt);
		if (hr_dev->caps.max_rq_sg <= 2)
			hr_qp->rq.wqe_shift =
					FUNC1(hr_dev->caps.max_rq_desc_sz);
		else
			hr_qp->rq.wqe_shift =
					FUNC1(hr_dev->caps.max_rq_desc_sz
					      * hr_qp->rq.max_gs);
	}

	cap->max_recv_wr = hr_qp->rq.max_post = hr_qp->rq.wqe_cnt;
	cap->max_recv_sge = hr_qp->rq.max_gs;

	return 0;
}