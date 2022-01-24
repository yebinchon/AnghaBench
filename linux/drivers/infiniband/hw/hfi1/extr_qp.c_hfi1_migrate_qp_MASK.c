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
struct TYPE_4__ {int /*<<< orphan*/  qp_context; int /*<<< orphan*/  (* event_handler ) (struct ib_event*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  device; } ;
struct rvt_qp {TYPE_2__ ibqp; int /*<<< orphan*/  remote_ah_attr; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_alt_pkey_index; int /*<<< orphan*/  s_pkey_index; int /*<<< orphan*/  alt_ah_attr; int /*<<< orphan*/  port_num; int /*<<< orphan*/  s_mig_state; struct hfi1_qp_priv* priv; } ;
struct TYPE_3__ {TYPE_2__* qp; } ;
struct ib_event {int /*<<< orphan*/  event; TYPE_1__ element; int /*<<< orphan*/  device; } ;
struct hfi1_qp_priv {int /*<<< orphan*/  s_sc; int /*<<< orphan*/  s_sde; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI1_S_AHG_CLEAR ; 
 int /*<<< orphan*/  IB_EVENT_PATH_MIG ; 
 int /*<<< orphan*/  IB_MIG_MIGRATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_event*,int /*<<< orphan*/ ) ; 

void FUNC5(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;
	struct ib_event ev;

	qp->s_mig_state = IB_MIG_MIGRATED;
	qp->remote_ah_attr = qp->alt_ah_attr;
	qp->port_num = FUNC3(&qp->alt_ah_attr);
	qp->s_pkey_index = qp->s_alt_pkey_index;
	qp->s_flags |= HFI1_S_AHG_CLEAR;
	priv->s_sc = FUNC0(qp->ibqp.device, &qp->remote_ah_attr);
	priv->s_sde = FUNC2(qp, priv->s_sc);
	FUNC1(qp);

	ev.device = qp->ibqp.device;
	ev.element.qp = &qp->ibqp;
	ev.event = IB_EVENT_PATH_MIG;
	qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
}