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
struct hfi1_user_sdma_pkt_q {int /*<<< orphan*/  comps; int /*<<< orphan*/  txreq_cache; struct hfi1_user_sdma_pkt_q* req_in_use; struct hfi1_user_sdma_pkt_q* reqs; int /*<<< orphan*/  n_reqs; int /*<<< orphan*/  wait; int /*<<< orphan*/  busy; scalar_t__ handler; } ;
struct hfi1_filedata {struct hfi1_user_sdma_pkt_q* cq; struct hfi1_user_sdma_pkt_q* pq; int /*<<< orphan*/  subctxt; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/  ctxt; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_user_sdma_pkt_q*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

int FUNC8(struct hfi1_filedata *fd,
			       struct hfi1_ctxtdata *uctxt)
{
	struct hfi1_user_sdma_pkt_q *pq;

	FUNC5(uctxt->dd, uctxt->ctxt, fd->subctxt);

	pq = fd->pq;
	if (pq) {
		if (pq->handler)
			FUNC1(pq->handler);
		FUNC2(&pq->busy);
		/* Wait until all requests have been freed. */
		FUNC7(
			pq->wait,
			!FUNC0(&pq->n_reqs));
		FUNC3(pq->reqs);
		FUNC3(pq->req_in_use);
		FUNC4(pq->txreq_cache);
		FUNC3(pq);
		fd->pq = NULL;
	}
	if (fd->cq) {
		FUNC6(fd->cq->comps);
		FUNC3(fd->cq);
		fd->cq = NULL;
	}
	return 0;
}