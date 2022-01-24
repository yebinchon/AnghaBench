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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  ver_tid_offset; int /*<<< orphan*/ * swdata; } ;
struct hfi1_pkt_header {TYPE_1__ kdeth; int /*<<< orphan*/ * bth; int /*<<< orphan*/ * lrh; int /*<<< orphan*/ * pbc; } ;
struct user_sdma_txreq {int flags; int /*<<< orphan*/  txreq; struct hfi1_pkt_header hdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  comp_idx; int /*<<< orphan*/  ctrl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lrh; int /*<<< orphan*/ * pbc; } ;
struct user_sdma_request {int seqnum; int* tids; size_t tididx; int tidoffset; int n_tids; TYPE_2__ info; int /*<<< orphan*/  koffset; TYPE_3__ hdr; struct hfi1_user_sdma_pkt_q* pq; } ;
struct hfi1_user_sdma_pkt_q {int /*<<< orphan*/  dd; int /*<<< orphan*/  subctxt; int /*<<< orphan*/  ctxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int EINVAL ; 
 scalar_t__ EXPECTED ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDX ; 
 int KDETH_OM_LARGE_SHIFT ; 
 int KDETH_OM_MAX_SIZE ; 
 int KDETH_OM_SMALL_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LEN ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  OFFSET ; 
 int /*<<< orphan*/  OM ; 
 int PAGE_SIZE ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SH ; 
 int /*<<< orphan*/  TID ; 
 int /*<<< orphan*/  TIDCTRL ; 
 int TXREQ_FLAGS_REQ_ACK ; 
 int TXREQ_FLAGS_REQ_DISABLE_SH ; 
 int FUNC4 (struct user_sdma_request*,struct hfi1_pkt_header*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hfi1_pkt_header,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hfi1_pkt_header*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct hfi1_pkt_header*,int) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hfi1_pkt_header*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct user_sdma_request *req,
			    struct user_sdma_txreq *tx, u32 datalen)
{
	struct hfi1_user_sdma_pkt_q *pq = req->pq;
	struct hfi1_pkt_header *hdr = &tx->hdr;
	u8 omfactor; /* KDETH.OM */
	u16 pbclen;
	int ret;
	u32 tidval = 0, lrhlen = FUNC9(*hdr, FUNC12(datalen));

	/* Copy the header template to the request before modification */
	FUNC11(hdr, &req->hdr, sizeof(*hdr));

	/*
	 * Check if the PBC and LRH length are mismatched. If so
	 * adjust both in the header.
	 */
	pbclen = FUNC10(hdr->pbc[0]);
	if (FUNC3(pbclen) != lrhlen) {
		pbclen = (pbclen & 0xf000) | FUNC2(lrhlen);
		hdr->pbc[0] = FUNC7(pbclen);
		hdr->lrh[2] = FUNC5(lrhlen >> 2);
		/*
		 * Third packet
		 * This is the first packet in the sequence that has
		 * a "static" size that can be used for the rest of
		 * the packets (besides the last one).
		 */
		if (FUNC18(req->seqnum == 2)) {
			/*
			 * From this point on the lengths in both the
			 * PBC and LRH are the same until the last
			 * packet.
			 * Adjust the template so we don't have to update
			 * every packet
			 */
			req->hdr.pbc[0] = hdr->pbc[0];
			req->hdr.lrh[2] = hdr->lrh[2];
		}
	}
	/*
	 * We only have to modify the header if this is not the
	 * first packet in the request. Otherwise, we use the
	 * header given to us.
	 */
	if (FUNC18(!req->seqnum)) {
		ret = FUNC4(req, hdr, lrhlen, datalen);
		if (ret)
			return ret;
		goto done;
	}

	hdr->bth[2] = FUNC6(
		FUNC15(hdr->bth[2],
				(FUNC13(req->info.ctrl) == EXPECTED),
				req->seqnum));

	/* Set ACK request on last packet */
	if (FUNC18(tx->flags & TXREQ_FLAGS_REQ_ACK))
		hdr->bth[2] |= FUNC6(1UL << 31);

	/* Set the new offset */
	hdr->kdeth.swdata[6] = FUNC8(req->koffset);
	/* Expected packets have to fill in the new TID information */
	if (FUNC13(req->info.ctrl) == EXPECTED) {
		tidval = req->tids[req->tididx];
		/*
		 * If the offset puts us at the end of the current TID,
		 * advance everything.
		 */
		if ((req->tidoffset) == (FUNC0(tidval, LEN) *
					 PAGE_SIZE)) {
			req->tidoffset = 0;
			/*
			 * Since we don't copy all the TIDs, all at once,
			 * we have to check again.
			 */
			if (++req->tididx > req->n_tids - 1 ||
			    !req->tids[req->tididx]) {
				return -EINVAL;
			}
			tidval = req->tids[req->tididx];
		}
		omfactor = FUNC0(tidval, LEN) * PAGE_SIZE >=
			KDETH_OM_MAX_SIZE ? KDETH_OM_LARGE_SHIFT :
			KDETH_OM_SMALL_SHIFT;
		/* Set KDETH.TIDCtrl based on value for this TID. */
		FUNC1(hdr->kdeth.ver_tid_offset, TIDCTRL,
			  FUNC0(tidval, CTRL));
		/* Set KDETH.TID based on value for this TID */
		FUNC1(hdr->kdeth.ver_tid_offset, TID,
			  FUNC0(tidval, IDX));
		/* Clear KDETH.SH when DISABLE_SH flag is set */
		if (FUNC18(tx->flags & TXREQ_FLAGS_REQ_DISABLE_SH))
			FUNC1(hdr->kdeth.ver_tid_offset, SH, 0);
		/*
		 * Set the KDETH.OFFSET and KDETH.OM based on size of
		 * transfer.
		 */
		FUNC17(
			pq->dd, pq->ctxt, pq->subctxt, req->info.comp_idx,
			req->tidoffset, req->tidoffset >> omfactor,
			omfactor != KDETH_OM_SMALL_SHIFT);
		FUNC1(hdr->kdeth.ver_tid_offset, OFFSET,
			  req->tidoffset >> omfactor);
		FUNC1(hdr->kdeth.ver_tid_offset, OM,
			  omfactor != KDETH_OM_SMALL_SHIFT);
	}
done:
	FUNC16(pq->dd, pq->ctxt, pq->subctxt,
				    req->info.comp_idx, hdr, tidval);
	return FUNC14(pq->dd, &tx->txreq, hdr, sizeof(*hdr));
}