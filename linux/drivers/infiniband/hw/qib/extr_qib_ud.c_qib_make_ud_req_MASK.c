#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_14__ {int /*<<< orphan*/  imm_data; } ;
struct TYPE_16__ {scalar_t__ opcode; int send_flags; TYPE_3__ ex; int /*<<< orphan*/  num_sge; } ;
struct rvt_swqe {int length; int psn; TYPE_5__ wr; int /*<<< orphan*/ * sg_list; } ;
struct TYPE_19__ {scalar_t__ qp_type; int qp_num; int /*<<< orphan*/  device; } ;
struct TYPE_11__ {int total_len; int /*<<< orphan*/  num_sge; int /*<<< orphan*/ * sg_list; int /*<<< orphan*/  sge; } ;
struct rvt_qp {size_t state; scalar_t__ s_last; scalar_t__ s_cur; int s_size; int s_hdrwords; int s_cur_size; int qkey; int /*<<< orphan*/  s_flags; TYPE_8__ ibqp; int /*<<< orphan*/  s_pkey_index; TYPE_10__ s_sge; struct rvt_swqe* s_wqe; int /*<<< orphan*/  s_srate; TYPE_10__* s_cur_sge; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  port_num; int /*<<< orphan*/  s_head; struct qib_qp_priv* priv; } ;
struct rdma_ah_attr {int dummy; } ;
struct qib_qp_priv {TYPE_4__* s_hdr; int /*<<< orphan*/  s_dma_busy; } ;
struct qib_pportdata {int lmc; int lid; } ;
struct qib_ibport {int* sl_to_vl; TYPE_9__* pmastats; } ;
struct TYPE_17__ {void** deth; int /*<<< orphan*/  imm_data; } ;
struct TYPE_18__ {TYPE_6__ ud; } ;
struct ib_other_headers {TYPE_7__ u; void** bth; } ;
struct TYPE_20__ {int /*<<< orphan*/  n_unicast_xmit; int /*<<< orphan*/  n_multicast_xmit; } ;
struct TYPE_12__ {struct ib_other_headers oth; int /*<<< orphan*/  grh; } ;
struct TYPE_13__ {struct ib_other_headers oth; TYPE_1__ l; } ;
struct TYPE_15__ {void** lrh; TYPE_2__ u; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int IB_BTH_SOLICITED ; 
 void* IB_LID_PERMISSIVE ; 
 void* IB_MULTICAST_LID_BASE ; 
 int IB_OPCODE_UD_SEND_ONLY ; 
 int IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE ; 
 scalar_t__ IB_QPT_GSI ; 
 scalar_t__ IB_QPT_SMI ; 
 int IB_SEND_SOLICITED ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 scalar_t__ IB_WR_SEND_WITH_IMM ; 
 int QIB_DEFAULT_P_KEY ; 
 int QIB_LRH_BTH ; 
 int QIB_LRH_GRH ; 
 int QIB_MULTICAST_QPN ; 
 int QIB_PSN_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RVT_FLUSH_SEND ; 
 int RVT_PROCESS_NEXT_SEND_OK ; 
 int /*<<< orphan*/  RVT_S_BUSY ; 
 int /*<<< orphan*/  RVT_S_WAIT_DMA ; 
 int SIZE_OF_CRC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 int* ib_rvt_state_ops ; 
 struct qib_pportdata* FUNC5 (struct qib_ibport*) ; 
 int FUNC6 (struct qib_ibport*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct qib_ibport*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rvt_qp*,struct rvt_swqe*) ; 
 int FUNC9 (struct rdma_ah_attr*) ; 
 int FUNC10 (struct rdma_ah_attr*) ; 
 int FUNC11 (struct rdma_ah_attr*) ; 
 size_t FUNC12 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC13 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC14 (struct rdma_ah_attr*) ; 
 struct rdma_ah_attr* FUNC15 (struct rvt_swqe*) ; 
 int /*<<< orphan*/  FUNC16 (struct rvt_swqe*) ; 
 struct rvt_swqe* FUNC17 (struct rvt_qp*,scalar_t__) ; 
 int FUNC18 (struct rvt_swqe*) ; 
 int FUNC19 (struct rvt_swqe*) ; 
 int /*<<< orphan*/  FUNC20 (struct rvt_qp*,struct rvt_swqe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 struct qib_ibport* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int) ; 

int FUNC26(struct rvt_qp *qp, unsigned long *flags)
{
	struct qib_qp_priv *priv = qp->priv;
	struct ib_other_headers *ohdr;
	struct rdma_ah_attr *ah_attr;
	struct qib_pportdata *ppd;
	struct qib_ibport *ibp;
	struct rvt_swqe *wqe;
	u32 nwords;
	u32 extra_bytes;
	u32 bth0;
	u16 lrh0;
	u16 lid;
	int ret = 0;
	int next_cur;

	if (!(ib_rvt_state_ops[qp->state] & RVT_PROCESS_NEXT_SEND_OK)) {
		if (!(ib_rvt_state_ops[qp->state] & RVT_FLUSH_SEND))
			goto bail;
		/* We are in the error state, flush the work request. */
		if (qp->s_last == FUNC0(qp->s_head))
			goto bail;
		/* If DMAs are in progress, we can't flush immediately. */
		if (FUNC1(&priv->s_dma_busy)) {
			qp->s_flags |= RVT_S_WAIT_DMA;
			goto bail;
		}
		wqe = FUNC17(qp, qp->s_last);
		FUNC20(qp, wqe, IB_WC_WR_FLUSH_ERR);
		goto done;
	}

	/* see post_one_send() */
	if (qp->s_cur == FUNC0(qp->s_head))
		goto bail;

	wqe = FUNC17(qp, qp->s_cur);
	next_cur = qp->s_cur + 1;
	if (next_cur >= qp->s_size)
		next_cur = 0;

	/* Construct the header. */
	ibp = FUNC24(qp->ibqp.device, qp->port_num);
	ppd = FUNC5(ibp);
	ah_attr = FUNC15(wqe);
	if (FUNC10(ah_attr) >= FUNC2(IB_MULTICAST_LID_BASE)) {
		if (FUNC10(ah_attr) !=
				FUNC2(IB_LID_PERMISSIVE))
			FUNC23(ibp->pmastats->n_multicast_xmit);
		else
			FUNC23(ibp->pmastats->n_unicast_xmit);
	} else {
		FUNC23(ibp->pmastats->n_unicast_xmit);
		lid = FUNC10(ah_attr) & ~((1 << ppd->lmc) - 1);
		if (FUNC25(lid == ppd->lid)) {
			unsigned long tflags = *flags;
			/*
			 * If DMAs are in progress, we can't generate
			 * a completion for the loopback packet since
			 * it would be out of order.
			 * XXX Instead of waiting, we could queue a
			 * zero length descriptor so we get a callback.
			 */
			if (FUNC1(&priv->s_dma_busy)) {
				qp->s_flags |= RVT_S_WAIT_DMA;
				goto bail;
			}
			qp->s_cur = next_cur;
			FUNC22(&qp->s_lock, tflags);
			FUNC8(qp, wqe);
			FUNC21(&qp->s_lock, tflags);
			*flags = tflags;
			FUNC20(qp, wqe, IB_WC_SUCCESS);
			goto done;
		}
	}

	qp->s_cur = next_cur;
	extra_bytes = -wqe->length & 3;
	nwords = (wqe->length + extra_bytes) >> 2;

	/* header size in 32-bit words LRH+BTH+DETH = (8+12+8)/4. */
	qp->s_hdrwords = 7;
	qp->s_cur_size = wqe->length;
	qp->s_cur_sge = &qp->s_sge;
	qp->s_srate = FUNC13(ah_attr);
	qp->s_wqe = wqe;
	qp->s_sge.sge = wqe->sg_list[0];
	qp->s_sge.sg_list = wqe->sg_list + 1;
	qp->s_sge.num_sge = wqe->wr.num_sge;
	qp->s_sge.total_len = wqe->length;

	if (FUNC9(ah_attr) & IB_AH_GRH) {
		/* Header size in 32-bit words. */
		qp->s_hdrwords += FUNC7(ibp, &priv->s_hdr->u.l.grh,
					       FUNC14(ah_attr),
					       qp->s_hdrwords, nwords);
		lrh0 = QIB_LRH_GRH;
		ohdr = &priv->s_hdr->u.l.oth;
		/*
		 * Don't worry about sending to locally attached multicast
		 * QPs.  It is unspecified by the spec. what happens.
		 */
	} else {
		/* Header size in 32-bit words. */
		lrh0 = QIB_LRH_BTH;
		ohdr = &priv->s_hdr->u.oth;
	}
	if (wqe->wr.opcode == IB_WR_SEND_WITH_IMM) {
		qp->s_hdrwords++;
		ohdr->u.ud.imm_data = wqe->wr.ex.imm_data;
		bth0 = IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE << 24;
	} else
		bth0 = IB_OPCODE_UD_SEND_ONLY << 24;
	lrh0 |= FUNC12(ah_attr) << 4;
	if (qp->ibqp.qp_type == IB_QPT_SMI)
		lrh0 |= 0xF000; /* Set VL (see ch. 13.5.3.1) */
	else
		lrh0 |= ibp->sl_to_vl[FUNC12(ah_attr)] << 12;
	priv->s_hdr->lrh[0] = FUNC3(lrh0);
	priv->s_hdr->lrh[1] =
			FUNC3(FUNC10(ah_attr));  /* DEST LID */
	priv->s_hdr->lrh[2] =
			FUNC3(qp->s_hdrwords + nwords + SIZE_OF_CRC);
	lid = ppd->lid;
	if (lid) {
		lid |= FUNC11(ah_attr) &
			((1 << ppd->lmc) - 1);
		priv->s_hdr->lrh[3] = FUNC3(lid);
	} else
		priv->s_hdr->lrh[3] = IB_LID_PERMISSIVE;
	if (wqe->wr.send_flags & IB_SEND_SOLICITED)
		bth0 |= IB_BTH_SOLICITED;
	bth0 |= extra_bytes << 20;
	bth0 |= qp->ibqp.qp_type == IB_QPT_SMI ? QIB_DEFAULT_P_KEY :
		FUNC6(ibp, qp->ibqp.qp_type == IB_QPT_GSI ?
			     FUNC16(wqe) : qp->s_pkey_index);
	ohdr->bth[0] = FUNC4(bth0);
	/*
	 * Use the multicast QP if the destination LID is a multicast LID.
	 */
	ohdr->bth[1] = FUNC10(ah_attr) >=
			FUNC2(IB_MULTICAST_LID_BASE) &&
		FUNC10(ah_attr) != FUNC2(IB_LID_PERMISSIVE) ?
		FUNC4(QIB_MULTICAST_QPN) :
		FUNC4(FUNC19(wqe));
	ohdr->bth[2] = FUNC4(wqe->psn & QIB_PSN_MASK);
	/*
	 * Qkeys with the high order bit set mean use the
	 * qkey from the QP context instead of the WR (see 10.2.5).
	 */
	ohdr->u.ud.deth[0] =
		FUNC4((int)FUNC18(wqe) < 0 ? qp->qkey :
			    FUNC18(wqe));
	ohdr->u.ud.deth[1] = FUNC4(qp->ibqp.qp_num);

done:
	return 1;
bail:
	qp->s_flags &= ~RVT_S_BUSY;
	return ret;
}