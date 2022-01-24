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
struct t4_cqe {int dummy; } ;
struct ib_wc {int dummy; } ;
struct c4iw_srq {int /*<<< orphan*/  lock; } ;
struct c4iw_qp {int /*<<< orphan*/  lock; struct c4iw_srq* srq; } ;
struct c4iw_cq {int /*<<< orphan*/  rhp; int /*<<< orphan*/  cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct t4_cqe*) ; 
 int FUNC1 (struct c4iw_cq*,struct c4iw_qp*,struct ib_wc*,struct c4iw_srq*) ; 
 struct c4iw_qp* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct t4_cqe**) ; 

__attribute__((used)) static int FUNC6(struct c4iw_cq *chp, struct ib_wc *wc)
{
	struct c4iw_srq *srq = NULL;
	struct c4iw_qp *qhp = NULL;
	struct t4_cqe *rd_cqe;
	int ret;

	ret = FUNC5(&chp->cq, &rd_cqe);

	if (ret)
		return ret;

	qhp = FUNC2(chp->rhp, FUNC0(rd_cqe));
	if (qhp) {
		FUNC3(&qhp->lock);
		srq = qhp->srq;
		if (srq)
			FUNC3(&srq->lock);
		ret = FUNC1(chp, qhp, wc, srq);
		FUNC4(&qhp->lock);
		if (srq)
			FUNC4(&srq->lock);
	} else {
		ret = FUNC1(chp, NULL, wc, NULL);
	}
	return ret;
}