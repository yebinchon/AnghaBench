#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ qp_type; int /*<<< orphan*/  device; } ;
struct rvt_qp {int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_hdrwords; int /*<<< orphan*/  s_cur_size; int /*<<< orphan*/  s_cur_sge; int /*<<< orphan*/  s_flags; TYPE_1__ ibqp; int /*<<< orphan*/  remote_ah_attr; int /*<<< orphan*/  port_num; struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int /*<<< orphan*/  s_hdr; } ;
struct qib_pportdata {int lmc; int lid; } ;
struct qib_ibport {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_RC ; 
 scalar_t__ IB_QPT_UC ; 
 int /*<<< orphan*/  RVT_S_BUSY ; 
 struct qib_pportdata* FUNC0 (struct qib_ibport*) ; 
 int FUNC1 (struct rvt_qp*,unsigned long*) ; 
 int FUNC2 (struct rvt_qp*,unsigned long*) ; 
 int FUNC3 (struct rvt_qp*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_qp*) ; 
 scalar_t__ FUNC5 (struct rvt_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct qib_ibport* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(struct rvt_qp *qp)
{
	struct qib_qp_priv *priv = qp->priv;
	struct qib_ibport *ibp = FUNC10(qp->ibqp.device, qp->port_num);
	struct qib_pportdata *ppd = FUNC0(ibp);
	int (*make_req)(struct rvt_qp *qp, unsigned long *flags);
	unsigned long flags;

	if ((qp->ibqp.qp_type == IB_QPT_RC ||
	     qp->ibqp.qp_type == IB_QPT_UC) &&
	    (FUNC6(&qp->remote_ah_attr) &
	     ~((1 << ppd->lmc) - 1)) == ppd->lid) {
		FUNC7(qp);
		return;
	}

	if (qp->ibqp.qp_type == IB_QPT_RC)
		make_req = qib_make_rc_req;
	else if (qp->ibqp.qp_type == IB_QPT_UC)
		make_req = qib_make_uc_req;
	else
		make_req = qib_make_ud_req;

	FUNC8(&qp->s_lock, flags);

	/* Return if we are already busy processing a work request. */
	if (!FUNC4(qp)) {
		FUNC9(&qp->s_lock, flags);
		return;
	}

	qp->s_flags |= RVT_S_BUSY;

	do {
		/* Check for a constructed packet to be sent. */
		if (qp->s_hdrwords != 0) {
			FUNC9(&qp->s_lock, flags);
			/*
			 * If the packet cannot be sent now, return and
			 * the send tasklet will be woken up later.
			 */
			if (FUNC5(qp, priv->s_hdr, qp->s_hdrwords,
					   qp->s_cur_sge, qp->s_cur_size))
				return;
			/* Record that s_hdr is empty. */
			qp->s_hdrwords = 0;
			FUNC8(&qp->s_lock, flags);
		}
	} while (make_req(qp, &flags));

	FUNC9(&qp->s_lock, flags);
}