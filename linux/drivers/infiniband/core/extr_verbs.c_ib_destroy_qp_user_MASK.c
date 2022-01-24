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
struct ib_udata {int dummy; } ;
struct ib_srq {int /*<<< orphan*/  usecnt; } ;
struct ib_rwq_ind_table {int /*<<< orphan*/  usecnt; } ;
struct ib_qp_security {int dummy; } ;
struct ib_qp {scalar_t__ mrs_used; TYPE_2__* device; int /*<<< orphan*/  res; int /*<<< orphan*/  uobject; struct ib_qp_security* qp_sec; struct ib_rwq_ind_table* rwq_ind_tbl; struct ib_srq* srq; struct ib_cq* recv_cq; struct ib_cq* send_cq; struct ib_pd* pd; struct ib_qp* real_qp; int /*<<< orphan*/  usecnt; struct ib_gid_attr* av_sgid_attr; struct ib_gid_attr* alt_path_sgid_attr; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  usecnt; } ;
struct TYPE_3__ {int (* destroy_qp ) (struct ib_qp*,struct ib_udata*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_qp_security*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_qp_security*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_qp_security*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_qp*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_gid_attr const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_qp*) ; 
 int FUNC11 (struct ib_qp*,struct ib_udata*) ; 

int FUNC12(struct ib_qp *qp, struct ib_udata *udata)
{
	const struct ib_gid_attr *alt_path_sgid_attr = qp->alt_path_sgid_attr;
	const struct ib_gid_attr *av_sgid_attr = qp->av_sgid_attr;
	struct ib_pd *pd;
	struct ib_cq *scq, *rcq;
	struct ib_srq *srq;
	struct ib_rwq_ind_table *ind_tbl;
	struct ib_qp_security *sec;
	int ret;

	FUNC0(qp->mrs_used > 0);

	if (FUNC3(&qp->usecnt))
		return -EBUSY;

	if (qp->real_qp != qp)
		return FUNC1(qp);

	pd   = qp->pd;
	scq  = qp->send_cq;
	rcq  = qp->recv_cq;
	srq  = qp->srq;
	ind_tbl = qp->rwq_ind_tbl;
	sec  = qp->qp_sec;
	if (sec)
		FUNC5(sec);

	if (!qp->uobject)
		FUNC10(qp);

	FUNC7(qp, true);
	FUNC9(&qp->res);
	ret = qp->device->ops.destroy_qp(qp, udata);
	if (!ret) {
		if (alt_path_sgid_attr)
			FUNC8(alt_path_sgid_attr);
		if (av_sgid_attr)
			FUNC8(av_sgid_attr);
		if (pd)
			FUNC2(&pd->usecnt);
		if (scq)
			FUNC2(&scq->usecnt);
		if (rcq)
			FUNC2(&rcq->usecnt);
		if (srq)
			FUNC2(&srq->usecnt);
		if (ind_tbl)
			FUNC2(&ind_tbl->usecnt);
		if (sec)
			FUNC6(sec);
	} else {
		if (sec)
			FUNC4(sec);
	}

	return ret;
}