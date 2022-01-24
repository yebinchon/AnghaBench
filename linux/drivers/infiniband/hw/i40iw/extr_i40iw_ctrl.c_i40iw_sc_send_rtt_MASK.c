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
typedef  int u64 ;
struct i40iw_qp_uk {int swqe_polarity; TYPE_1__* sq_base; } ;
struct i40iw_sc_qp {int /*<<< orphan*/  dev; struct i40iw_qp_uk qp_uk; } ;
struct TYPE_2__ {int* elem; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IWQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IWQPSQ_REMSTAG ; 
 int /*<<< orphan*/  I40IWQPSQ_VALID ; 
 int I40IWQP_OP_RDMA_READ ; 
 int I40IWQP_OP_RDMA_WRITE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int /*<<< orphan*/  I40IW_QP_WQE_MIN_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 

__attribute__((used)) static void FUNC4(struct i40iw_sc_qp *qp, bool read)
{
	u64 *wqe;
	u64 header;
	struct i40iw_qp_uk *qp_uk;

	qp_uk = &qp->qp_uk;
	wqe = qp_uk->sq_base->elem;

	FUNC3(wqe, 0, 0);
	FUNC3(wqe, 8, 0);
	FUNC3(wqe, 16, 0);
	if (read) {
		header = FUNC0(0x1234, I40IWQPSQ_REMSTAG) |
			 FUNC0(I40IWQP_OP_RDMA_READ, I40IWQPSQ_OPCODE) |
			 FUNC0(qp->qp_uk.swqe_polarity, I40IWQPSQ_VALID);
		FUNC3(wqe, 8, ((u64)0xabcd << 32));
	} else {
		header = FUNC0(I40IWQP_OP_RDMA_WRITE, I40IWQPSQ_OPCODE) |
			 FUNC0(qp->qp_uk.swqe_polarity, I40IWQPSQ_VALID);
	}

	FUNC2(wqe, header);

	FUNC1(qp->dev, I40IW_DEBUG_WQE, "RTR WQE",
			wqe, I40IW_QP_WQE_MIN_SIZE);
}