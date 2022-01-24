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
struct rxe_port {scalar_t__ qp_gsi_index; scalar_t__ qp_smi_index; } ;
struct rxe_dev {struct rxe_port port; int /*<<< orphan*/  ib_dev; } ;
struct ib_qp_cap {int dummy; } ;
struct ib_qp_init_attr {int port_num; scalar_t__ qp_type; int /*<<< orphan*/  srq; int /*<<< orphan*/  send_cq; int /*<<< orphan*/  recv_cq; struct ib_qp_cap cap; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IB_QPT_GSI ; 
 scalar_t__ IB_QPT_SMI ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct rxe_dev*,struct ib_qp_cap*,int) ; 

int FUNC3(struct rxe_dev *rxe, struct ib_qp_init_attr *init)
{
	struct ib_qp_cap *cap = &init->cap;
	struct rxe_port *port;
	int port_num = init->port_num;

	if (!init->recv_cq || !init->send_cq) {
		FUNC0("missing cq\n");
		goto err1;
	}

	if (FUNC2(rxe, cap, !!init->srq))
		goto err1;

	if (init->qp_type == IB_QPT_SMI || init->qp_type == IB_QPT_GSI) {
		if (!FUNC1(&rxe->ib_dev, port_num)) {
			FUNC0("invalid port = %d\n", port_num);
			goto err1;
		}

		port = &rxe->port;

		if (init->qp_type == IB_QPT_SMI && port->qp_smi_index) {
			FUNC0("SMI QP exists for port %d\n", port_num);
			goto err1;
		}

		if (init->qp_type == IB_QPT_GSI && port->qp_gsi_index) {
			FUNC0("GSI QP exists for port %d\n", port_num);
			goto err1;
		}
	}

	return 0;

err1:
	return -EINVAL;
}