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
typedef  int u64 ;
typedef  scalar_t__ u16 ;
struct tid_rdma_params {unsigned long timeout; int /*<<< orphan*/  max_len; } ;
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  remote; struct tid_rdma_params local; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct hfi1_qp_priv {scalar_t__ timeout_shift; TYPE_2__ tid_rdma; scalar_t__ pkts_ps; int /*<<< orphan*/  tid_timer_timeout_jiffies; TYPE_1__ opfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TID_RDMA ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tid_rdma_params*,int /*<<< orphan*/ ) ; 
 struct tid_rdma_params* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tid_rdma_params*) ; 
 struct tid_rdma_params* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 scalar_t__ FUNC8 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tid_rdma_params*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rvt_qp*,int,struct tid_rdma_params*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 

bool FUNC12(struct rvt_qp *qp, u64 data)
{
	struct hfi1_qp_priv *priv = qp->priv;
	struct tid_rdma_params *remote, *old;
	bool ret = true;

	old = FUNC7(priv->tid_rdma.remote,
					FUNC5(&priv->opfn.lock));
	data &= ~0xfULL;
	/*
	 * If data passed in is zero, return true so as not to continue the
	 * negotiation process
	 */
	if (!data || !FUNC0(TID_RDMA))
		goto null;
	/*
	 * If kzalloc fails, return false. This will result in:
	 * * at the requester a new OPFN request being generated to retry
	 *   the negotiation
	 * * at the responder, 0 being returned to the requester so as to
	 *   disable TID RDMA at both the requester and the responder
	 */
	remote = FUNC4(sizeof(*remote), GFP_ATOMIC);
	if (!remote) {
		ret = false;
		goto null;
	}

	FUNC9(remote, data);
	priv->tid_timer_timeout_jiffies =
		FUNC11((((4096UL * (1UL << remote->timeout)) /
				   1000UL) << 3) * 7);
	FUNC10(qp, 0, &priv->tid_rdma.local);
	FUNC10(qp, 1, remote);
	FUNC6(priv->tid_rdma.remote, remote);
	/*
	 * A TID RDMA READ request's segment size is not equal to
	 * remote->max_len only when the request's data length is smaller
	 * than remote->max_len. In that case, there will be only one segment.
	 * Therefore, when priv->pkts_ps is used to calculate req->cur_seg
	 * during retry, it will lead to req->cur_seg = 0, which is exactly
	 * what is expected.
	 */
	priv->pkts_ps = (u16)FUNC8(qp, remote->max_len);
	priv->timeout_shift = FUNC2(priv->pkts_ps - 1) + 1;
	goto free;
null:
	FUNC1(priv->tid_rdma.remote, NULL);
	priv->timeout_shift = 0;
free:
	if (old)
		FUNC3(old, rcu_head);
	return ret;
}