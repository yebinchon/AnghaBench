#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_6__ {int qp_num; } ;
struct TYPE_5__ {int path_mtu; int /*<<< orphan*/  port_num; } ;
struct TYPE_4__ {void* index; } ;
struct rxe_qp {int /*<<< orphan*/  skb_out; int /*<<< orphan*/  ssn; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  grp_lock; int /*<<< orphan*/  send_pkts; int /*<<< orphan*/  grp_list; TYPE_3__ ibqp; TYPE_2__ attr; TYPE_1__ pelem; int /*<<< orphan*/  mtu; int /*<<< orphan*/  sq_sig_type; } ;
struct rxe_port {void* qp_gsi_index; void* qp_smi_index; } ;
struct rxe_dev {struct rxe_port port; } ;
struct ib_qp_init_attr {int qp_type; int /*<<< orphan*/  port_num; int /*<<< orphan*/  sq_sig_type; } ;

/* Variables and functions */
#define  IB_QPT_GSI 129 
#define  IB_QPT_SMI 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rxe_dev *rxe, struct rxe_qp *qp,
			     struct ib_qp_init_attr *init)
{
	struct rxe_port *port;
	u32 qpn;

	qp->sq_sig_type		= init->sq_sig_type;
	qp->attr.path_mtu	= 1;
	qp->mtu			= FUNC2(qp->attr.path_mtu);

	qpn			= qp->pelem.index;
	port			= &rxe->port;

	switch (init->qp_type) {
	case IB_QPT_SMI:
		qp->ibqp.qp_num		= 0;
		port->qp_smi_index	= qpn;
		qp->attr.port_num	= init->port_num;
		break;

	case IB_QPT_GSI:
		qp->ibqp.qp_num		= 1;
		port->qp_gsi_index	= qpn;
		qp->attr.port_num	= init->port_num;
		break;

	default:
		qp->ibqp.qp_num		= qpn;
		break;
	}

	FUNC0(&qp->grp_list);

	FUNC3(&qp->send_pkts);

	FUNC4(&qp->grp_lock);
	FUNC4(&qp->state_lock);

	FUNC1(&qp->ssn, 0);
	FUNC1(&qp->skb_out, 0);
}