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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rdma_sq_send_wqe_2st {int dummy; } ;
struct rdma_sq_send_wqe_1st {int /*<<< orphan*/  wqe_size; int /*<<< orphan*/  flags; } ;
struct qedr_qp {int dummy; } ;
struct qedr_dev {int dummy; } ;
struct ib_send_wr {int send_flags; } ;

/* Variables and functions */
 int IB_SEND_INLINE ; 
 int /*<<< orphan*/  RDMA_SQ_SEND_WQE_INLINE_FLG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_sq_send_wqe_2st*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qedr_dev*,struct qedr_qp*,int /*<<< orphan*/ *,struct ib_send_wr const*,struct ib_send_wr const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qedr_qp*,int /*<<< orphan*/ *,struct ib_send_wr const*) ; 

__attribute__((used)) static u32 FUNC4(struct qedr_dev *dev,
				     struct qedr_qp *qp,
				     struct rdma_sq_send_wqe_1st *swqe,
				     struct rdma_sq_send_wqe_2st *swqe2,
				     const struct ib_send_wr *wr,
				     const struct ib_send_wr **bad_wr)
{
	FUNC1(swqe2, 0, sizeof(*swqe2));
	if (wr->send_flags & IB_SEND_INLINE) {
		u8 flags = 0;

		FUNC0(flags, RDMA_SQ_SEND_WQE_INLINE_FLG, 1);
		return FUNC2(dev, qp, &swqe->wqe_size, wr,
						   bad_wr, &swqe->flags, flags);
	}

	return FUNC3(qp, &swqe->wqe_size, wr);
}