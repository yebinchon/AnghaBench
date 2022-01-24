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
struct TYPE_2__ {scalar_t__ queue; } ;
struct rxe_qp {TYPE_1__ rq; int /*<<< orphan*/  srq; int /*<<< orphan*/  req_pkts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rxe_qp*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rxe_qp *qp, bool notify)
{
	struct sk_buff *skb;

	while ((skb = FUNC4(&qp->req_pkts))) {
		FUNC3(qp);
		FUNC1(skb);
	}

	if (notify)
		return;

	while (!qp->srq && qp->rq.queue && FUNC2(qp->rq.queue))
		FUNC0(qp->rq.queue);
}