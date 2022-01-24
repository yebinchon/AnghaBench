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
typedef  int u16 ;

/* Variables and functions */
 void* FUNC0 (void*,void const*,void*) ; 
#define  MLX5_CMD_OP_CREATE_CQ 136 
#define  MLX5_CMD_OP_CREATE_MKEY 135 
#define  MLX5_CMD_OP_CREATE_QP 134 
#define  MLX5_CMD_OP_CREATE_RMP 133 
#define  MLX5_CMD_OP_CREATE_RQ 132 
#define  MLX5_CMD_OP_CREATE_SQ 131 
#define  MLX5_CMD_OP_CREATE_XRC_SRQ 130 
#define  MLX5_CMD_OP_CREATE_XRQ 129 
#define  MLX5_CMD_OP_MODIFY_CQ 128 
 int FUNC1 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int) ; 
 void* cq_context ; 
 int /*<<< orphan*/  cq_umem_valid ; 
 void* create_cq_in ; 
 void* create_mkey_in ; 
 void* create_qp_in ; 
 void* create_rmp_in ; 
 void* create_rq_in ; 
 void* create_sq_in ; 
 void* create_xrc_srq_in ; 
 void* create_xrq_in ; 
 void* ctx ; 
 int /*<<< orphan*/  dbr_umem_valid ; 
 int /*<<< orphan*/  general_obj_in_cmd_hdr ; 
 int /*<<< orphan*/  mkey_umem_valid ; 
 void* modify_cq_in ; 
 int opcode ; 
 int /*<<< orphan*/  wq_umem_valid ; 
 void* xrc_srq_context_entry ; 
 int /*<<< orphan*/  xrc_srq_umem_valid ; 
 void* xrq_context ; 

__attribute__((used)) static void FUNC3(const void *in)
{
	u16 opcode = FUNC1(general_obj_in_cmd_hdr, in, opcode);

	switch (opcode) {
	case MLX5_CMD_OP_CREATE_MKEY:
		FUNC2(create_mkey_in, in, mkey_umem_valid, 1);
		break;
	case MLX5_CMD_OP_CREATE_CQ:
	{
		void *cqc;

		FUNC2(create_cq_in, in, cq_umem_valid, 1);
		cqc = FUNC0(create_cq_in, in, cq_context);
		FUNC2(cqc, cqc, dbr_umem_valid, 1);
		break;
	}
	case MLX5_CMD_OP_CREATE_QP:
	{
		void *qpc;

		qpc = FUNC0(create_qp_in, in, qpc);
		FUNC2(qpc, qpc, dbr_umem_valid, 1);
		FUNC2(create_qp_in, in, wq_umem_valid, 1);
		break;
	}

	case MLX5_CMD_OP_CREATE_RQ:
	{
		void *rqc, *wq;

		rqc = FUNC0(create_rq_in, in, ctx);
		wq  = FUNC0(rqc, rqc, wq);
		FUNC2(wq, wq, dbr_umem_valid, 1);
		FUNC2(wq, wq, wq_umem_valid, 1);
		break;
	}

	case MLX5_CMD_OP_CREATE_SQ:
	{
		void *sqc, *wq;

		sqc = FUNC0(create_sq_in, in, ctx);
		wq = FUNC0(sqc, sqc, wq);
		FUNC2(wq, wq, dbr_umem_valid, 1);
		FUNC2(wq, wq, wq_umem_valid, 1);
		break;
	}

	case MLX5_CMD_OP_MODIFY_CQ:
		FUNC2(modify_cq_in, in, cq_umem_valid, 1);
		break;

	case MLX5_CMD_OP_CREATE_RMP:
	{
		void *rmpc, *wq;

		rmpc = FUNC0(create_rmp_in, in, ctx);
		wq = FUNC0(rmpc, rmpc, wq);
		FUNC2(wq, wq, dbr_umem_valid, 1);
		FUNC2(wq, wq, wq_umem_valid, 1);
		break;
	}

	case MLX5_CMD_OP_CREATE_XRQ:
	{
		void *xrqc, *wq;

		xrqc = FUNC0(create_xrq_in, in, xrq_context);
		wq = FUNC0(xrqc, xrqc, wq);
		FUNC2(wq, wq, dbr_umem_valid, 1);
		FUNC2(wq, wq, wq_umem_valid, 1);
		break;
	}

	case MLX5_CMD_OP_CREATE_XRC_SRQ:
	{
		void *xrc_srqc;

		FUNC2(create_xrc_srq_in, in, xrc_srq_umem_valid, 1);
		xrc_srqc = FUNC0(create_xrc_srq_in, in,
					xrc_srq_context_entry);
		FUNC2(xrc_srqc, xrc_srqc, dbr_umem_valid, 1);
		break;
	}

	default:
		return;
	}
}