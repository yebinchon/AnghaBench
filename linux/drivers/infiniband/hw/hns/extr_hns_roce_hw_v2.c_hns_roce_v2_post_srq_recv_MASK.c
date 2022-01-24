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
struct ib_srq {int /*<<< orphan*/  device; } ;
struct ib_recv_wr {int num_sge; int /*<<< orphan*/  wr_id; TYPE_1__* sg_list; struct ib_recv_wr* next; } ;
struct hns_roce_v2_wqe_data_seg {scalar_t__ addr; void* lkey; void* len; } ;
struct hns_roce_v2_db {void* parameter; void* byte_4; } ;
struct hns_roce_srq {int head; int max; int max_gs; int tail; int srqn; int /*<<< orphan*/  lock; int /*<<< orphan*/  db_reg_l; int /*<<< orphan*/ * wrid; int /*<<< orphan*/  idx_que; } ;
struct hns_roce_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int length; int lkey; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int HNS_ROCE_V2_SRQ_DB ; 
 int V2_DB_BYTE_4_CMD_S ; 
 int V2_DB_BYTE_4_TAG_M ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (struct hns_roce_srq*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct hns_roce_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 struct hns_roce_srq* FUNC10 (struct ib_srq*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct ib_srq *ibsrq,
				     const struct ib_recv_wr *wr,
				     const struct ib_recv_wr **bad_wr)
{
	struct hns_roce_dev *hr_dev = FUNC9(ibsrq->device);
	struct hns_roce_srq *srq = FUNC10(ibsrq);
	struct hns_roce_v2_wqe_data_seg *dseg;
	struct hns_roce_v2_db srq_db;
	unsigned long flags;
	int ret = 0;
	int wqe_idx;
	void *wqe;
	int nreq;
	int ind;
	int i;

	FUNC7(&srq->lock, flags);

	ind = srq->head & (srq->max - 1);

	for (nreq = 0; wr; ++nreq, wr = wr->next) {
		if (FUNC11(wr->num_sge > srq->max_gs)) {
			ret = -EINVAL;
			*bad_wr = wr;
			break;
		}

		if (FUNC11(srq->head == srq->tail)) {
			ret = -ENOMEM;
			*bad_wr = wr;
			break;
		}

		wqe_idx = FUNC3(&srq->idx_que, srq->max);
		if (wqe_idx < 0) {
			ret = -ENOMEM;
			*bad_wr = wr;
			break;
		}

		FUNC2(&srq->idx_que, ind, wqe_idx);
		wqe = FUNC4(srq, wqe_idx);
		dseg = (struct hns_roce_v2_wqe_data_seg *)wqe;

		for (i = 0; i < wr->num_sge; ++i) {
			dseg[i].len = FUNC0(wr->sg_list[i].length);
			dseg[i].lkey = FUNC0(wr->sg_list[i].lkey);
			dseg[i].addr = FUNC1(wr->sg_list[i].addr);
		}

		if (i < srq->max_gs) {
			dseg[i].len = 0;
			dseg[i].lkey = FUNC0(0x100);
			dseg[i].addr = 0;
		}

		srq->wrid[wqe_idx] = wr->wr_id;
		ind = (ind + 1) & (srq->max - 1);
	}

	if (FUNC6(nreq)) {
		srq->head += nreq;

		/*
		 * Make sure that descriptors are written before
		 * doorbell record.
		 */
		FUNC12();

		srq_db.byte_4 =
			FUNC0(HNS_ROCE_V2_SRQ_DB << V2_DB_BYTE_4_CMD_S |
				    (srq->srqn & V2_DB_BYTE_4_TAG_M));
		srq_db.parameter = FUNC0(srq->head);

		FUNC5(hr_dev, (__le32 *)&srq_db, srq->db_reg_l);

	}

	FUNC8(&srq->lock, flags);

	return ret;
}