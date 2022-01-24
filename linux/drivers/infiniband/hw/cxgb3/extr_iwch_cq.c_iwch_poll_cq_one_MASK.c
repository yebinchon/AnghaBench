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
struct t3_cqe {int dummy; } ;
struct iwch_qp {int /*<<< orphan*/  lock; } ;
struct iwch_dev {int dummy; } ;
struct iwch_cq {int /*<<< orphan*/  cq; } ;
struct ib_wc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct t3_cqe) ; 
 int FUNC1 (struct iwch_dev*,struct iwch_cq*,struct iwch_qp*,struct ib_wc*) ; 
 struct t3_cqe* FUNC2 (int /*<<< orphan*/ *) ; 
 struct iwch_qp* FUNC3 (struct iwch_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iwch_dev *rhp, struct iwch_cq *chp,
			    struct ib_wc *wc)
{
	struct iwch_qp *qhp;
	struct t3_cqe *rd_cqe;
	int ret;

	rd_cqe = FUNC2(&chp->cq);

	if (!rd_cqe)
		return 0;

	qhp = FUNC3(rhp, FUNC0(*rd_cqe));
	if (qhp) {
		FUNC4(&qhp->lock);
		ret = FUNC1(rhp, chp, qhp, wc);
		FUNC5(&qhp->lock);
	} else {
		ret = FUNC1(rhp, chp, NULL, wc);
	}
	return ret;
}