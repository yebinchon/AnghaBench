#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cqe; int /*<<< orphan*/  device; } ;
struct mthca_cq {int cons_index; TYPE_2__ ibcq; TYPE_1__* resize_buf; } ;
struct TYPE_3__ {int cqe; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTHCA_CQ_ENTRY_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_cq*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct mthca_cq *cq)
{
	int i;

	/*
	 * In Tavor mode, the hardware keeps the consumer and producer
	 * indices mod the CQ size.  Since we might be making the CQ
	 * bigger, we need to deal with the case where the producer
	 * index wrapped around before the CQ was resized.
	 */
	if (!FUNC4(FUNC5(cq->ibcq.device)) &&
	    cq->ibcq.cqe < cq->resize_buf->cqe) {
		cq->cons_index &= cq->ibcq.cqe;
		if (FUNC0(FUNC1(cq, cq->ibcq.cqe)))
			cq->cons_index -= cq->ibcq.cqe + 1;
	}

	for (i = cq->cons_index; FUNC0(FUNC1(cq, i & cq->ibcq.cqe)); ++i)
		FUNC3(FUNC2(&cq->resize_buf->buf,
					i & cq->resize_buf->cqe),
		       FUNC1(cq, i & cq->ibcq.cqe), MTHCA_CQ_ENTRY_SIZE);
}