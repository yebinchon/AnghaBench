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
struct pvrdma_qp {int dummy; } ;
struct pvrdma_cq {int /*<<< orphan*/  cq_lock; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pvrdma_cq*,struct pvrdma_qp**,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pvrdma_cq* FUNC3 (struct ib_cq*) ; 

int FUNC4(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
	struct pvrdma_cq *cq = FUNC3(ibcq);
	struct pvrdma_qp *cur_qp = NULL;
	unsigned long flags;
	int npolled;

	if (num_entries < 1 || wc == NULL)
		return 0;

	FUNC1(&cq->cq_lock, flags);
	for (npolled = 0; npolled < num_entries; ++npolled) {
		if (FUNC0(cq, &cur_qp, wc + npolled))
			break;
	}

	FUNC2(&cq->cq_lock, flags);

	/* Ensure we do not return errors from poll_cq */
	return npolled;
}