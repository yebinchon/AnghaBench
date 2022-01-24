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
typedef  int u32 ;
struct rxe_qp {int dummy; } ;
struct rxe_port {int qp_gsi_index; } ;
struct rxe_pkt_info {int mask; struct rxe_qp* qp; struct rxe_dev* rxe; } ;
struct rxe_dev {int /*<<< orphan*/  qp_pool; struct rxe_port port; } ;

/* Variables and functions */
 scalar_t__ BTH_TVER ; 
 int EINVAL ; 
 int IB_MULTICAST_QPN ; 
 int RXE_GRH_MASK ; 
 int FUNC0 (struct rxe_pkt_info*) ; 
 scalar_t__ FUNC1 (struct rxe_pkt_info*) ; 
 int FUNC2 (struct rxe_dev*,struct rxe_pkt_info*,struct rxe_qp*) ; 
 int FUNC3 (struct rxe_dev*,struct rxe_pkt_info*,int,struct rxe_qp*) ; 
 int FUNC4 (struct rxe_dev*,struct rxe_pkt_info*,struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct rxe_qp*) ; 
 struct rxe_qp* FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct rxe_pkt_info *pkt)
{
	struct rxe_dev *rxe = pkt->rxe;
	struct rxe_port *port = &rxe->port;
	struct rxe_qp *qp = NULL;
	u32 qpn = FUNC0(pkt);
	int index;
	int err;

	if (FUNC9(FUNC1(pkt) != BTH_TVER)) {
		FUNC6("bad tver\n");
		goto err1;
	}

	if (FUNC9(qpn == 0)) {
		FUNC5("QP 0 not supported");
		goto err1;
	}

	if (qpn != IB_MULTICAST_QPN) {
		index = (qpn == 1) ? port->qp_gsi_index : qpn;

		qp = FUNC8(&rxe->qp_pool, index);
		if (FUNC9(!qp)) {
			FUNC6("no qp matches qpn 0x%x\n", qpn);
			goto err1;
		}

		err = FUNC4(rxe, pkt, qp);
		if (FUNC9(err))
			goto err2;

		err = FUNC2(rxe, pkt, qp);
		if (FUNC9(err))
			goto err2;

		err = FUNC3(rxe, pkt, qpn, qp);
		if (FUNC9(err))
			goto err2;
	} else {
		if (FUNC9((pkt->mask & RXE_GRH_MASK) == 0)) {
			FUNC6("no grh for mcast qpn\n");
			goto err1;
		}
	}

	pkt->qp = qp;
	return 0;

err2:
	FUNC7(qp);
err1:
	return -EINVAL;
}