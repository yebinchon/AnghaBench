#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_6__ {int /*<<< orphan*/  imm_data; } ;
struct TYPE_7__ {scalar_t__ opcode; int send_flags; TYPE_1__ ex; } ;
struct rvt_swqe {int /*<<< orphan*/  psn; TYPE_2__ wr; } ;
struct TYPE_10__ {scalar_t__ qp_type; int qp_num; int /*<<< orphan*/  device; } ;
struct rvt_qp {int qkey; TYPE_5__ ibqp; int /*<<< orphan*/  s_pkey_index; int /*<<< orphan*/  port_num; } ;
struct TYPE_8__ {void** deth; int /*<<< orphan*/  imm_data; } ;
struct TYPE_9__ {TYPE_3__ ud; } ;
struct ib_other_headers {TYPE_4__ u; void** bth; } ;
struct hfi1_ibport {int dummy; } ;

/* Variables and functions */
 int IB_BTH_SOLICITED ; 
 int IB_OPCODE_UD_SEND_ONLY ; 
 int IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE ; 
 scalar_t__ IB_QPT_GSI ; 
 scalar_t__ IB_QPT_SMI ; 
 int IB_SEND_SOLICITED ; 
 scalar_t__ IB_WR_SEND_WITH_IMM ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct hfi1_ibport*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rvt_swqe*) ; 
 int FUNC4 (struct rvt_swqe*) ; 
 int FUNC5 (struct rvt_swqe*) ; 
 struct hfi1_ibport* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rvt_qp *qp, struct rvt_swqe *wqe,
			       struct ib_other_headers *ohdr,
			       u16 *pkey, u32 extra_bytes, bool bypass)
{
	u32 bth0;
	struct hfi1_ibport *ibp;

	ibp = FUNC6(qp->ibqp.device, qp->port_num);
	if (wqe->wr.opcode == IB_WR_SEND_WITH_IMM) {
		ohdr->u.ud.imm_data = wqe->wr.ex.imm_data;
		bth0 = IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE << 24;
	} else {
		bth0 = IB_OPCODE_UD_SEND_ONLY << 24;
	}

	if (wqe->wr.send_flags & IB_SEND_SOLICITED)
		bth0 |= IB_BTH_SOLICITED;
	bth0 |= extra_bytes << 20;
	if (qp->ibqp.qp_type == IB_QPT_GSI || qp->ibqp.qp_type == IB_QPT_SMI)
		*pkey = FUNC1(ibp, FUNC3(wqe));
	else
		*pkey = FUNC1(ibp, qp->s_pkey_index);
	if (!bypass)
		bth0 |= *pkey;
	ohdr->bth[0] = FUNC0(bth0);
	ohdr->bth[1] = FUNC0(FUNC5(wqe));
	ohdr->bth[2] = FUNC0(FUNC2(wqe->psn));
	/*
	 * Qkeys with the high order bit set mean use the
	 * qkey from the QP context instead of the WR (see 10.2.5).
	 */
	ohdr->u.ud.deth[0] =
		FUNC0((int)FUNC4(wqe) < 0 ? qp->qkey :
			    FUNC4(wqe));
	ohdr->u.ud.deth[1] = FUNC0(qp->ibqp.qp_num);
}