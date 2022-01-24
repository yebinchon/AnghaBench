#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int qp_type; int /*<<< orphan*/  device; } ;
struct rvt_qp {int timeout_jiffies; int s_flags; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  remote_ah_attr; TYPE_1__ ibqp; int /*<<< orphan*/  port_num; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_flags; int /*<<< orphan*/  s_iowait; TYPE_2__* s_sde; } ;
struct hfi1_pkt_state {int in_thread; int timeout_int; int pkts_sent; int /*<<< orphan*/  flags; scalar_t__ s_txreq; int /*<<< orphan*/  wait; TYPE_4__* ppd; int /*<<< orphan*/  cpu; scalar_t__ timeout; int /*<<< orphan*/  ibp; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int lmc; int lid; TYPE_3__* dd; } ;
struct TYPE_7__ {int /*<<< orphan*/  node; } ;
struct TYPE_6__ {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int HFI1_S_ANY_WAIT_IO ; 
 int HFI1_S_TID_BUSY_SET ; 
#define  IB_QPT_RC 129 
#define  IB_QPT_UC 128 
 int /*<<< orphan*/  IOWAIT_PENDING_IB ; 
 int RVT_S_BUSY ; 
 void* SEND_RESCHED_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rvt_qp*,struct hfi1_pkt_state*) ; 
 int FUNC4 (struct rvt_qp*,struct hfi1_pkt_state*) ; 
 int FUNC5 (struct rvt_qp*,struct hfi1_pkt_state*) ; 
 scalar_t__ FUNC6 (struct rvt_qp*,struct hfi1_pkt_state*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rvt_qp*) ; 
 scalar_t__ FUNC8 (struct rvt_qp*,struct hfi1_pkt_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  loopback ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct rvt_qp*,int) ; 

void FUNC20(struct rvt_qp *qp, bool in_thread)
{
	struct hfi1_pkt_state ps;
	struct hfi1_qp_priv *priv = qp->priv;
	int (*make_req)(struct rvt_qp *qp, struct hfi1_pkt_state *ps);

	ps.dev = FUNC17(qp->ibqp.device);
	ps.ibp = FUNC18(qp->ibqp.device, qp->port_num);
	ps.ppd = FUNC12(ps.ibp);
	ps.in_thread = in_thread;
	ps.wait = FUNC9(&priv->s_iowait);

	FUNC19(qp, in_thread);

	switch (qp->ibqp.qp_type) {
	case IB_QPT_RC:
		if (!loopback && ((FUNC13(&qp->remote_ah_attr) &
				   ~((1 << ps.ppd->lmc) - 1)) ==
				  ps.ppd->lid)) {
			FUNC14(qp);
			return;
		}
		make_req = hfi1_make_rc_req;
		ps.timeout_int = qp->timeout_jiffies;
		break;
	case IB_QPT_UC:
		if (!loopback && ((FUNC13(&qp->remote_ah_attr) &
				   ~((1 << ps.ppd->lmc) - 1)) ==
				  ps.ppd->lid)) {
			FUNC14(qp);
			return;
		}
		make_req = hfi1_make_uc_req;
		ps.timeout_int = SEND_RESCHED_TIMEOUT;
		break;
	default:
		make_req = hfi1_make_ud_req;
		ps.timeout_int = SEND_RESCHED_TIMEOUT;
	}

	FUNC15(&qp->s_lock, ps.flags);

	/* Return if we are already busy processing a work request. */
	if (!FUNC7(qp)) {
		if (qp->s_flags & HFI1_S_ANY_WAIT_IO)
			FUNC10(&priv->s_iowait, IOWAIT_PENDING_IB);
		FUNC16(&qp->s_lock, ps.flags);
		return;
	}

	qp->s_flags |= RVT_S_BUSY;

	ps.timeout_int = ps.timeout_int / 8;
	ps.timeout = jiffies + ps.timeout_int;
	ps.cpu = priv->s_sde ? priv->s_sde->cpu :
			FUNC0(FUNC1(ps.ppd->dd->node));
	ps.pkts_sent = false;

	/* insure a pre-built packet is handled  */
	ps.s_txreq = FUNC2(ps.wait);
	do {
		/* Check for a constructed packet to be sent. */
		if (ps.s_txreq) {
			if (priv->s_flags & HFI1_S_TID_BUSY_SET)
				qp->s_flags |= RVT_S_BUSY;
			FUNC16(&qp->s_lock, ps.flags);
			/*
			 * If the packet cannot be sent now, return and
			 * the send engine will be woken up later.
			 */
			if (FUNC8(qp, &ps))
				return;

			/* allow other tasks to run */
			if (FUNC6(qp, &ps, false))
				return;

			FUNC15(&qp->s_lock, ps.flags);
		}
	} while (make_req(qp, &ps));
	FUNC11(ps.pkts_sent, &priv->s_iowait);
	FUNC16(&qp->s_lock, ps.flags);
}