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
struct rxe_send_wqe {int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;
struct rxe_qp {TYPE_1__ sq; int /*<<< orphan*/  resp_pkts; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_qp*,struct rxe_send_wqe*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct rxe_send_wqe* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rxe_qp*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rxe_qp *qp, bool notify)
{
	struct sk_buff *skb;
	struct rxe_send_wqe *wqe;

	while ((skb = FUNC5(&qp->resp_pkts))) {
		FUNC4(qp);
		FUNC2(skb);
	}

	while ((wqe = FUNC3(qp->sq.queue))) {
		if (notify) {
			wqe->status = IB_WC_WR_FLUSH_ERR;
			FUNC1(qp, wqe);
		} else {
			FUNC0(qp->sq.queue);
		}
	}
}