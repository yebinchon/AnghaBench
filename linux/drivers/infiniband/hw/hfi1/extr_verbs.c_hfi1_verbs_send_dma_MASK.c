#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_6__ {scalar_t__ hdr_type; } ;
struct TYPE_5__ {TYPE_3__ hdr; } ;
struct verbs_txreq {int hdr_dwords; int s_cur_size; TYPE_2__ phdr; int /*<<< orphan*/  txreq; int /*<<< orphan*/  sde; int /*<<< orphan*/  wqe; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct rvt_qp {TYPE_1__ ibqp; int /*<<< orphan*/  s_wqe; int /*<<< orphan*/  srate_mbps; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_sc; struct hfi1_ahg_info* s_ahg; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_pkt_state {struct verbs_txreq* s_txreq; int /*<<< orphan*/  pkts_sent; int /*<<< orphan*/  wait; int /*<<< orphan*/  opcode; struct hfi1_pportdata* ppd; struct hfi1_ibdev* dev; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_ahg_info {int dummy; } ;
typedef  int /*<<< orphan*/  pbc ;

/* Variables and functions */
 int ECOMM ; 
 int PBC_DC_INFO_SHIFT ; 
 int PBC_INSERT_BYPASS_ICRC ; 
 int PBC_PACKET_BYPASS ; 
 int SIZE_OF_CRC ; 
 int SIZE_OF_LT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct verbs_txreq*,struct hfi1_ahg_info*,int) ; 
 int FUNC1 (struct hfi1_pportdata*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rvt_qp*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct verbs_txreq*) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct rvt_qp*,struct hfi1_pkt_state*,int) ; 
 int FUNC16 (struct hfi1_ibdev*,struct rvt_qp*,struct hfi1_pkt_state*) ; 

int FUNC17(struct rvt_qp *qp, struct hfi1_pkt_state *ps,
			u64 pbc)
{
	struct hfi1_qp_priv *priv = qp->priv;
	struct hfi1_ahg_info *ahg_info = priv->s_ahg;
	u32 hdrwords = ps->s_txreq->hdr_dwords;
	u32 len = ps->s_txreq->s_cur_size;
	u32 plen;
	struct hfi1_ibdev *dev = ps->dev;
	struct hfi1_pportdata *ppd = ps->ppd;
	struct verbs_txreq *tx;
	u8 sc5 = priv->s_sc;
	int ret;
	u32 dwords;

	if (ps->s_txreq->phdr.hdr.hdr_type) {
		u8 extra_bytes = FUNC5((hdrwords << 2), len);

		dwords = (len + extra_bytes + (SIZE_OF_CRC << 2) +
			  SIZE_OF_LT) >> 2;
	} else {
		dwords = (len + 3) >> 2;
	}
	plen = hdrwords + dwords + sizeof(pbc) / 4;

	tx = ps->s_txreq;
	if (!FUNC11(&tx->txreq)) {
		if (FUNC8(pbc == 0)) {
			u32 vl = FUNC9(FUNC2(qp->ibqp.device), sc5);

			/* No vl15 here */
			/* set PBC_DC_INFO bit (aka SC[4]) in pbc */
			if (ps->s_txreq->phdr.hdr.hdr_type)
				pbc |= PBC_PACKET_BYPASS |
				       PBC_INSERT_BYPASS_ICRC;
			else
				pbc |= (FUNC7(sc5) << PBC_DC_INFO_SHIFT);

			pbc = FUNC1(ppd,
					 pbc,
					 qp->srate_mbps,
					 vl,
					 plen);

			if (FUNC13(FUNC3(qp, ps->opcode)))
				pbc = FUNC4(qp, ps->opcode, pbc);
			else
				/* Update HCRC based on packet opcode */
				pbc = FUNC14(ps->opcode, pbc);
		}
		tx->wqe = qp->s_wqe;
		ret = FUNC0(tx->sde, len, tx, ahg_info, pbc);
		if (FUNC13(ret))
			goto bail_build;
	}
	ret =  FUNC10(tx->sde, ps->wait, &tx->txreq, ps->pkts_sent);
	if (FUNC13(ret < 0)) {
		if (ret == -ECOMM)
			goto bail_ecomm;
		return ret;
	}

	FUNC15(qp, ps, plen);
	FUNC12(FUNC2(qp->ibqp.device),
				&ps->s_txreq->phdr.hdr, FUNC7(sc5));
	return ret;

bail_ecomm:
	/* The current one got "sent" */
	return 0;
bail_build:
	ret = FUNC16(dev, qp, ps);
	if (!ret) {
		/* free txreq - bad state */
		FUNC6(ps->s_txreq);
		ps->s_txreq = NULL;
	}
	return ret;
}