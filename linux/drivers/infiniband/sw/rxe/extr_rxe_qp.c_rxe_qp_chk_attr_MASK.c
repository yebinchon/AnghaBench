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
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int qp_state; } ;
struct rxe_qp {int /*<<< orphan*/  srq; TYPE_2__ req; TYPE_1__ attr; } ;
struct TYPE_7__ {int max_mtu; } ;
struct rxe_port {TYPE_3__ attr; } ;
struct TYPE_8__ {int /*<<< orphan*/  max_qp_rd_atom; } ;
struct rxe_dev {TYPE_4__ attr; struct rxe_port port; int /*<<< orphan*/  ib_dev; } ;
struct ib_qp_attr {int cur_qp_state; int qp_state; int port_num; int alt_port_num; int alt_timeout; int path_mtu; int timeout; int /*<<< orphan*/  max_rd_atomic; int /*<<< orphan*/  alt_ah_attr; int /*<<< orphan*/  ah_attr; int /*<<< orphan*/  cap; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
typedef  enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;

/* Variables and functions */
 int EINVAL ; 
 int IB_QPS_ERR ; 
 int IB_QPS_SQD ; 
 int IB_QP_ALT_PATH ; 
 int IB_QP_AV ; 
 int IB_QP_CAP ; 
 int IB_QP_CUR_STATE ; 
 int IB_QP_MAX_QP_RD_ATOMIC ; 
 int IB_QP_PATH_MTU ; 
 int IB_QP_PORT ; 
 int IB_QP_STATE ; 
 int IB_QP_TIMEOUT ; 
 scalar_t__ QP_STATE_DRAIN ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (struct rxe_dev*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct rxe_dev*,int /*<<< orphan*/ *,int) ; 

int FUNC8(struct rxe_dev *rxe, struct rxe_qp *qp,
		    struct ib_qp_attr *attr, int mask)
{
	enum ib_qp_state cur_state = (mask & IB_QP_CUR_STATE) ?
					attr->cur_qp_state : qp->attr.qp_state;
	enum ib_qp_state new_state = (mask & IB_QP_STATE) ?
					attr->qp_state : cur_state;

	if (!FUNC0(cur_state, new_state, FUNC4(qp), mask)) {
		FUNC3("invalid mask or state for qp\n");
		goto err1;
	}

	if (mask & IB_QP_STATE) {
		if (cur_state == IB_QPS_SQD) {
			if (qp->req.state == QP_STATE_DRAIN &&
			    new_state != IB_QPS_ERR)
				goto err1;
		}
	}

	if (mask & IB_QP_PORT) {
		if (!FUNC5(&rxe->ib_dev, attr->port_num)) {
			FUNC3("invalid port %d\n", attr->port_num);
			goto err1;
		}
	}

	if (mask & IB_QP_CAP && FUNC7(rxe, &attr->cap, !!qp->srq))
		goto err1;

	if (mask & IB_QP_AV && FUNC6(rxe, &attr->ah_attr))
		goto err1;

	if (mask & IB_QP_ALT_PATH) {
		if (FUNC6(rxe, &attr->alt_ah_attr))
			goto err1;
		if (!FUNC5(&rxe->ib_dev, attr->alt_port_num))  {
			FUNC3("invalid alt port %d\n", attr->alt_port_num);
			goto err1;
		}
		if (attr->alt_timeout > 31) {
			FUNC3("invalid QP alt timeout %d > 31\n",
				attr->alt_timeout);
			goto err1;
		}
	}

	if (mask & IB_QP_PATH_MTU) {
		struct rxe_port *port = &rxe->port;

		enum ib_mtu max_mtu = port->attr.max_mtu;
		enum ib_mtu mtu = attr->path_mtu;

		if (mtu > max_mtu) {
			FUNC2("invalid mtu (%d) > (%d)\n",
				 FUNC1(mtu),
				 FUNC1(max_mtu));
			goto err1;
		}
	}

	if (mask & IB_QP_MAX_QP_RD_ATOMIC) {
		if (attr->max_rd_atomic > rxe->attr.max_qp_rd_atom) {
			FUNC3("invalid max_rd_atomic %d > %d\n",
				attr->max_rd_atomic,
				rxe->attr.max_qp_rd_atom);
			goto err1;
		}
	}

	if (mask & IB_QP_TIMEOUT) {
		if (attr->timeout > 31) {
			FUNC3("invalid QP timeout %d > 31\n",
				attr->timeout);
			goto err1;
		}
	}

	return 0;

err1:
	return -EINVAL;
}