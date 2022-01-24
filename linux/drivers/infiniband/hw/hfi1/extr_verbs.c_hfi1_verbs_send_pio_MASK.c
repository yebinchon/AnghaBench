#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct send_context {int dummy; } ;
struct TYPE_12__ {void* vaddr; } ;
struct rvt_sge_state {TYPE_4__ sge; } ;
struct TYPE_9__ {int qp_type; int /*<<< orphan*/  device; } ;
struct rvt_qp {int /*<<< orphan*/  s_lock; TYPE_1__ ibqp; scalar_t__ s_wqe; int /*<<< orphan*/  srate_mbps; struct hfi1_qp_priv* priv; } ;
struct pio_buf {int dummy; } ;
struct hfi1_qp_priv {int s_sc; int /*<<< orphan*/  s_iowait; } ;
struct hfi1_pportdata {TYPE_5__* dd; } ;
struct hfi1_pkt_state {TYPE_8__* s_txreq; int /*<<< orphan*/  opcode; struct hfi1_pportdata* ppd; } ;
typedef  int /*<<< orphan*/  (* pio_release_cb ) (struct rvt_qp*,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  pbc ;
struct TYPE_11__ {scalar_t__ hdr_type; int /*<<< orphan*/  ibh; int /*<<< orphan*/  opah; } ;
struct TYPE_10__ {TYPE_3__ hdr; } ;
struct TYPE_14__ {int hdr_dwords; int s_cur_size; TYPE_2__ phdr; struct send_context* psc; struct rvt_sge_state* ss; } ;
struct TYPE_13__ {void* sdma_pad_dma; } ;

/* Variables and functions */
#define  IB_QPT_RC 129 
#define  IB_QPT_UC 128 
 int IB_WC_GENERAL_ERR ; 
 int IB_WC_SUCCESS ; 
 scalar_t__ FUNC0 (struct pio_buf*) ; 
 scalar_t__ FUNC1 (struct pio_buf*) ; 
 int PBC_DC_INFO_SHIFT ; 
 int PBC_INSERT_BYPASS_ICRC ; 
 int PBC_PACKET_BYPASS ; 
 int /*<<< orphan*/  PIO ; 
 int /*<<< orphan*/  RVT_S_WAIT_PIO ; 
 int SIZE_OF_CRC ; 
 int SIZE_OF_LT ; 
 int FUNC2 (struct hfi1_pportdata*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rvt_qp*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (struct rvt_qp*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct rvt_qp*,TYPE_3__*) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,struct pio_buf*,int,int*,int) ; 
 int FUNC15 (struct rvt_qp*,struct send_context*,struct hfi1_pkt_state*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct rvt_qp*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (struct rvt_sge_state*,int,int) ; 
 struct pio_buf* FUNC19 (struct send_context*,int,int /*<<< orphan*/  (*) (struct rvt_qp*,int /*<<< orphan*/ ),struct rvt_qp*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct pio_buf*) ; 
 int /*<<< orphan*/  FUNC22 (struct pio_buf*,void*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct pio_buf*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 scalar_t__ FUNC27 (int) ; 
 int FUNC28 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (struct rvt_qp*,struct hfi1_pkt_state*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct rvt_qp*,int /*<<< orphan*/ ) ; 

int FUNC31(struct rvt_qp *qp, struct hfi1_pkt_state *ps,
			u64 pbc)
{
	struct hfi1_qp_priv *priv = qp->priv;
	u32 hdrwords = ps->s_txreq->hdr_dwords;
	struct rvt_sge_state *ss = ps->s_txreq->ss;
	u32 len = ps->s_txreq->s_cur_size;
	u32 dwords;
	u32 plen;
	struct hfi1_pportdata *ppd = ps->ppd;
	u32 *hdr;
	u8 sc5;
	unsigned long flags = 0;
	struct send_context *sc;
	struct pio_buf *pbuf;
	int wc_status = IB_WC_SUCCESS;
	int ret = 0;
	pio_release_cb cb = NULL;
	u8 extra_bytes = 0;

	if (ps->s_txreq->phdr.hdr.hdr_type) {
		u8 pad_size = FUNC7((hdrwords << 2), len);

		extra_bytes = pad_size + (SIZE_OF_CRC << 2) + SIZE_OF_LT;
		dwords = (len + extra_bytes) >> 2;
		hdr = (u32 *)&ps->s_txreq->phdr.hdr.opah;
	} else {
		dwords = (len + 3) >> 2;
		hdr = (u32 *)&ps->s_txreq->phdr.hdr.ibh;
	}
	plen = hdrwords + dwords + sizeof(pbc) / 4;

	/* only RC/UC use complete */
	switch (qp->ibqp.qp_type) {
	case IB_QPT_RC:
	case IB_QPT_UC:
		cb = verbs_pio_complete;
		break;
	default:
		break;
	}

	/* vl15 special case taken care of in ud.c */
	sc5 = priv->s_sc;
	sc = ps->s_txreq->psc;

	if (FUNC13(pbc == 0)) {
		u8 vl = FUNC20(FUNC3(qp->ibqp.device), sc5);

		/* set PBC_DC_INFO bit (aka SC[4]) in pbc */
		if (ps->s_txreq->phdr.hdr.hdr_type)
			pbc |= PBC_PACKET_BYPASS | PBC_INSERT_BYPASS_ICRC;
		else
			pbc |= (FUNC11(sc5) << PBC_DC_INFO_SHIFT);

		pbc = FUNC2(ppd, pbc, qp->srate_mbps, vl, plen);
		if (FUNC27(FUNC5(qp, ps->opcode)))
			pbc = FUNC6(qp, ps->opcode, pbc);
		else
			/* Update HCRC based on packet opcode */
			pbc = FUNC28(ps->opcode, pbc);
	}
	if (cb)
		FUNC12(&priv->s_iowait);
	pbuf = FUNC19(sc, plen, cb, qp);
	if (FUNC1(pbuf)) {
		if (cb)
			FUNC30(qp, 0);
		if (FUNC0(pbuf)) {
			/*
			 * If we have filled the PIO buffers to capacity and are
			 * not in an active state this request is not going to
			 * go out to so just complete it with an error or else a
			 * ULP or the core may be stuck waiting.
			 */
			FUNC4(
				PIO,
				"alloc failed. state not active, completing");
			wc_status = IB_WC_GENERAL_ERR;
			goto pio_bail;
		} else {
			/*
			 * This is a normal occurrence. The PIO buffs are full
			 * up but we are still happily sending, well we could be
			 * so lets continue to queue the request.
			 */
			FUNC4(PIO, "alloc failed. state active, queuing");
			ret = FUNC15(qp, sc, ps, RVT_S_WAIT_PIO);
			if (!ret)
				/* txreq not queued - free */
				goto bail;
			/* tx consumed in wait */
			return ret;
		}
	}

	if (dwords == 0) {
		FUNC14(ppd->dd, pbuf, pbc, hdr, hdrwords);
	} else {
		FUNC23(pbuf, pbc,
				   hdr, hdrwords * 4);
		if (ss) {
			while (len) {
				void *addr = ss->sge.vaddr;
				u32 slen = FUNC16(&ss->sge, len);

				FUNC18(ss, slen, false);
				FUNC22(pbuf, addr, slen);
				len -= slen;
			}
		}
		/* add icrc, lt byte, and padding to flit */
		if (extra_bytes)
			FUNC22(pbuf, ppd->dd->sdma_pad_dma,
					 extra_bytes);

		FUNC21(pbuf);
	}

	FUNC29(qp, ps, plen);
	FUNC26(FUNC3(qp->ibqp.device),
			       &ps->s_txreq->phdr.hdr, FUNC11(sc5));

pio_bail:
	FUNC24(&qp->s_lock, flags);
	if (qp->s_wqe) {
		FUNC17(qp, qp->s_wqe, wc_status);
	} else if (qp->ibqp.qp_type == IB_QPT_RC) {
		if (FUNC27(wc_status == IB_WC_GENERAL_ERR))
			FUNC10(qp, &ps->s_txreq->phdr.hdr);
		FUNC9(qp, &ps->s_txreq->phdr.hdr);
	}
	FUNC25(&qp->s_lock, flags);

	ret = 0;

bail:
	FUNC8(ps->s_txreq);
	return ret;
}