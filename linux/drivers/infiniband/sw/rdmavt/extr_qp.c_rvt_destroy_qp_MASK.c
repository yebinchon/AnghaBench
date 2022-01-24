#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  kwq; } ;
struct TYPE_7__ {scalar_t__ qp_type; int /*<<< orphan*/  qp_num; } ;
struct rvt_qp {int /*<<< orphan*/  s_wq; int /*<<< orphan*/  alt_ah_attr; int /*<<< orphan*/  remote_ah_attr; struct rvt_qp* s_ack_queue; TYPE_4__ r_rq; TYPE_3__* ip; TYPE_2__ ibqp; int /*<<< orphan*/  refcount; int /*<<< orphan*/  wait; int /*<<< orphan*/  r_lock; int /*<<< orphan*/  s_hlock; int /*<<< orphan*/  s_lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* qp_priv_free ) (struct rvt_dev_info*,struct rvt_qp*) ;} ;
struct rvt_dev_info {int n_rc_qps; int busy_jiffies; TYPE_5__ driver_f; int /*<<< orphan*/  n_qps_lock; int /*<<< orphan*/  n_qps_allocated; TYPE_1__* qp_dev; } ;
struct ib_udata {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  qp_type; int /*<<< orphan*/  device; } ;
struct TYPE_8__ {int /*<<< orphan*/  ref; } ;
struct TYPE_6__ {int /*<<< orphan*/  qpn_table; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_RC ; 
 int RC_QP_SCALING_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*) ; 
 struct rvt_dev_info* FUNC2 (int /*<<< orphan*/ ) ; 
 struct rvt_qp* FUNC3 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rvt_release_mmap_info ; 
 int /*<<< orphan*/  FUNC9 (struct rvt_dev_info*,struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct rvt_dev_info*,struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

int FUNC17(struct ib_qp *ibqp, struct ib_udata *udata)
{
	struct rvt_qp *qp = FUNC3(ibqp);
	struct rvt_dev_info *rdi = FUNC2(ibqp->device);

	FUNC11(&qp->r_lock);
	FUNC10(&qp->s_hlock);
	FUNC10(&qp->s_lock);
	FUNC9(rdi, qp, ibqp->qp_type);
	FUNC12(&qp->s_lock);
	FUNC12(&qp->s_hlock);
	FUNC13(&qp->r_lock);

	FUNC16(qp->wait, !FUNC0(&qp->refcount));
	/* qpn is now available for use again */
	FUNC8(&rdi->qp_dev->qpn_table, qp->ibqp.qp_num);

	FUNC10(&rdi->n_qps_lock);
	rdi->n_qps_allocated--;
	if (qp->ibqp.qp_type == IB_QPT_RC) {
		rdi->n_rc_qps--;
		rdi->busy_jiffies = rdi->n_rc_qps / RC_QP_SCALING_INTERVAL;
	}
	FUNC12(&rdi->n_qps_lock);

	if (qp->ip)
		FUNC5(&qp->ip->ref, rvt_release_mmap_info);
	FUNC6(qp->r_rq.kwq);
	rdi->driver_f.qp_priv_free(rdi, qp);
	FUNC4(qp->s_ack_queue);
	FUNC7(&qp->remote_ah_attr);
	FUNC7(&qp->alt_ah_attr);
	FUNC1(qp);
	FUNC15(qp->s_wq);
	FUNC4(qp);
	return 0;
}