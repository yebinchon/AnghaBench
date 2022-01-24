#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int max_cnt; } ;
struct ocrdma_srq {int bit_fields_len; int /*<<< orphan*/  idx_bit_fields; int /*<<< orphan*/  rqe_wr_id_tbl; TYPE_3__ rq; scalar_t__ db; struct ocrdma_pd* pd; int /*<<< orphan*/  q_lock; } ;
struct ocrdma_pd {int id; } ;
struct TYPE_6__ {int db_page_size; scalar_t__ db; } ;
struct TYPE_5__ {scalar_t__ max_recv_sge; scalar_t__ max_rqe; } ;
struct ocrdma_dev {TYPE_2__ nic_info; TYPE_1__ attr; } ;
struct ib_udata {int dummy; } ;
struct TYPE_8__ {scalar_t__ max_sge; scalar_t__ max_wr; scalar_t__ srq_limit; } ;
struct ib_srq_init_attr {TYPE_4__ attr; } ;
struct ib_srq {int /*<<< orphan*/  device; int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ocrdma_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ocrdma_pd* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ocrdma_srq* FUNC2 (struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (struct ocrdma_dev*,struct ocrdma_srq*,struct ib_udata*) ; 
 int FUNC8 (struct ocrdma_dev*,struct ocrdma_srq*,struct ib_srq_init_attr*,struct ocrdma_pd*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocrdma_dev*,struct ocrdma_srq*) ; 
 int FUNC10 (struct ocrdma_srq*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct ib_srq *ibsrq, struct ib_srq_init_attr *init_attr,
		      struct ib_udata *udata)
{
	int status;
	struct ocrdma_pd *pd = FUNC1(ibsrq->pd);
	struct ocrdma_dev *dev = FUNC0(ibsrq->device);
	struct ocrdma_srq *srq = FUNC2(ibsrq);

	if (init_attr->attr.max_sge > dev->attr.max_recv_sge)
		return -EINVAL;
	if (init_attr->attr.max_wr > dev->attr.max_rqe)
		return -EINVAL;

	FUNC11(&srq->q_lock);
	srq->pd = pd;
	srq->db = dev->nic_info.db + (pd->id * dev->nic_info.db_page_size);
	status = FUNC8(dev, srq, init_attr, pd);
	if (status)
		return status;

	if (!udata) {
		srq->rqe_wr_id_tbl = FUNC3(srq->rq.max_cnt, sizeof(u64),
					     GFP_KERNEL);
		if (!srq->rqe_wr_id_tbl) {
			status = -ENOMEM;
			goto arm_err;
		}

		srq->bit_fields_len = (srq->rq.max_cnt / 32) +
		    (srq->rq.max_cnt % 32 ? 1 : 0);
		srq->idx_bit_fields =
		    FUNC5(srq->bit_fields_len, sizeof(u32),
				  GFP_KERNEL);
		if (!srq->idx_bit_fields) {
			status = -ENOMEM;
			goto arm_err;
		}
		FUNC6(srq->idx_bit_fields, 0xff,
		       srq->bit_fields_len * sizeof(u32));
	}

	if (init_attr->attr.srq_limit) {
		status = FUNC10(srq, &init_attr->attr);
		if (status)
			goto arm_err;
	}

	if (udata) {
		status = FUNC7(dev, srq, udata);
		if (status)
			goto arm_err;
	}

	return 0;

arm_err:
	FUNC9(dev, srq);
	FUNC4(srq->rqe_wr_id_tbl);
	FUNC4(srq->idx_bit_fields);
	return status;
}