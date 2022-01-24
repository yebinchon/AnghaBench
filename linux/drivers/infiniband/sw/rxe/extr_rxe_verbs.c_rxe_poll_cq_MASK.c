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
struct rxe_cqe {int /*<<< orphan*/  ibwc; } ;
struct rxe_cq {int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  queue; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct rxe_cqe* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rxe_cq* FUNC5 (struct ib_cq*) ; 

__attribute__((used)) static int FUNC6(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
	int i;
	struct rxe_cq *cq = FUNC5(ibcq);
	struct rxe_cqe *cqe;
	unsigned long flags;

	FUNC3(&cq->cq_lock, flags);
	for (i = 0; i < num_entries; i++) {
		cqe = FUNC2(cq->queue);
		if (!cqe)
			break;

		FUNC1(wc++, &cqe->ibwc, sizeof(*wc));
		FUNC0(cq->queue);
	}
	FUNC4(&cq->cq_lock, flags);

	return i;
}