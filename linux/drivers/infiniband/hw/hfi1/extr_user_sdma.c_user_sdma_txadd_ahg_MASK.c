#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct TYPE_6__ {int /*<<< orphan*/ * pbc; } ;
struct user_sdma_txreq {int /*<<< orphan*/  txreq; TYPE_1__ hdr; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pbc; } ;
struct user_sdma_request {int /*<<< orphan*/  ahg_idx; TYPE_3__ hdr; struct hfi1_user_sdma_pkt_q* pq; } ;
struct hfi1_user_sdma_pkt_q {int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  SDMA_TXREQ_F_AHG_COPY ; 
 int FUNC2 (struct user_sdma_request*,TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  user_sdma_txreq_cb ; 

__attribute__((used)) static int FUNC11(struct user_sdma_request *req,
			       struct user_sdma_txreq *tx,
			       u32 datalen)
{
	int ret;
	u16 pbclen = FUNC5(req->hdr.pbc[0]);
	u32 lrhlen = FUNC4(req->hdr, FUNC7(datalen));
	struct hfi1_user_sdma_pkt_q *pq = req->pq;

	/*
	 * Copy the request header into the tx header
	 * because the HW needs a cacheline-aligned
	 * address.
	 * This copy can be optimized out if the hdr
	 * member of user_sdma_request were also
	 * cacheline aligned.
	 */
	FUNC6(&tx->hdr, &req->hdr, sizeof(tx->hdr));
	if (FUNC1(pbclen) != lrhlen) {
		pbclen = (pbclen & 0xf000) | FUNC0(lrhlen);
		tx->hdr.pbc[0] = FUNC3(pbclen);
	}
	ret = FUNC2(req, &tx->hdr, lrhlen, datalen);
	if (ret)
		return ret;
	ret = FUNC10(&tx->txreq, SDMA_TXREQ_F_AHG_COPY,
			      sizeof(tx->hdr) + datalen, req->ahg_idx,
			      0, NULL, 0, user_sdma_txreq_cb);
	if (ret)
		return ret;
	ret = FUNC8(pq->dd, &tx->txreq, &tx->hdr, sizeof(tx->hdr));
	if (ret)
		FUNC9(pq->dd, &tx->txreq);
	return ret;
}