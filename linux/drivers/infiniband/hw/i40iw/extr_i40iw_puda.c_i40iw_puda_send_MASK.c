#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  size_t u32 ;
struct TYPE_5__ {int swqe_polarity; TYPE_1__* sq_wrtrk_array; } ;
struct i40iw_sc_qp {TYPE_2__ qp_uk; int /*<<< orphan*/  dev; } ;
struct i40iw_puda_send_info {int tcplen; int maclen; int doloopback; int paddr; int len; scalar_t__ scratch; scalar_t__ ipv4; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_4__ {uintptr_t wrid; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IWQPSQ_FRAG_LEN ; 
 int /*<<< orphan*/  I40IW_DEBUG_PUDA ; 
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ; 
 int I40IW_OP_TYPE_SEND ; 
 int /*<<< orphan*/  I40IW_UDA_QPSQ_DOLOOPBACK ; 
 int /*<<< orphan*/  I40IW_UDA_QPSQ_IIPT ; 
 int /*<<< orphan*/  I40IW_UDA_QPSQ_IPLEN ; 
 int /*<<< orphan*/  I40IW_UDA_QPSQ_L4LEN ; 
 int /*<<< orphan*/  I40IW_UDA_QPSQ_L4T ; 
 int /*<<< orphan*/  I40IW_UDA_QPSQ_MACLEN ; 
 int /*<<< orphan*/  I40IW_UDA_QPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_UDA_QPSQ_SIGCOMPL ; 
 int /*<<< orphan*/  I40IW_UDA_QPSQ_VALID ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (TYPE_2__*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 

enum i40iw_status_code FUNC6(struct i40iw_sc_qp *qp,
				       struct i40iw_puda_send_info *info)
{
	u64 *wqe;
	u32 iplen, l4len;
	u64 header[2];
	u32 wqe_idx;
	u8 iipt;

	/* number of 32 bits DWORDS in header */
	l4len = info->tcplen >> 2;
	if (info->ipv4) {
		iipt = 3;
		iplen = 5;
	} else {
		iipt = 1;
		iplen = 10;
	}

	wqe = FUNC3(&qp->qp_uk, &wqe_idx);
	if (!wqe)
		return I40IW_ERR_QP_TOOMANY_WRS_POSTED;
	qp->qp_uk.sq_wrtrk_array[wqe_idx].wrid = (uintptr_t)info->scratch;
	/* Third line of WQE descriptor */
	/* maclen is in words */
	header[0] = FUNC0((info->maclen >> 1), I40IW_UDA_QPSQ_MACLEN) |
		    FUNC0(iplen, I40IW_UDA_QPSQ_IPLEN) | FUNC0(1, I40IW_UDA_QPSQ_L4T) |
		    FUNC0(iipt, I40IW_UDA_QPSQ_IIPT) |
		    FUNC0(l4len, I40IW_UDA_QPSQ_L4LEN);
	/* Forth line of WQE descriptor */
	header[1] = FUNC0(I40IW_OP_TYPE_SEND, I40IW_UDA_QPSQ_OPCODE) |
		    FUNC0(1, I40IW_UDA_QPSQ_SIGCOMPL) |
		    FUNC0(info->doloopback, I40IW_UDA_QPSQ_DOLOOPBACK) |
		    FUNC0(qp->qp_uk.swqe_polarity, I40IW_UDA_QPSQ_VALID);

	FUNC5(wqe, 0, info->paddr);
	FUNC5(wqe, 8, FUNC0(info->len, I40IWQPSQ_FRAG_LEN));
	FUNC5(wqe, 16, header[0]);

	FUNC2(wqe, header[1]);

	FUNC1(qp->dev, I40IW_DEBUG_PUDA, "PUDA SEND WQE", wqe, 32);
	FUNC4(&qp->qp_uk);
	return 0;
}