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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  task; } ;
struct rxe_qp {TYPE_1__ resp; int /*<<< orphan*/  req_pkts; } ;
struct rxe_pkt_info {scalar_t__ opcode; } ;

/* Variables and functions */
 scalar_t__ IB_OPCODE_RC_RDMA_READ_REQUEST ; 
 struct rxe_pkt_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC4(struct rxe_qp *qp, struct sk_buff *skb)
{
	int must_sched;
	struct rxe_pkt_info *pkt = FUNC0(skb);

	FUNC3(&qp->req_pkts, skb);

	must_sched = (pkt->opcode == IB_OPCODE_RC_RDMA_READ_REQUEST) ||
			(FUNC2(&qp->req_pkts) > 1);

	FUNC1(&qp->resp.task, must_sched);
}