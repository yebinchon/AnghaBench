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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  task; } ;
struct rxe_qp {TYPE_1__ comp; int /*<<< orphan*/  resp_pkts; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxe; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXE_CNT_COMPLETER_SCHED ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC5(struct rxe_qp *qp, struct sk_buff *skb)
{
	int must_sched;

	FUNC4(&qp->resp_pkts, skb);

	must_sched = FUNC3(&qp->resp_pkts) > 1;
	if (must_sched != 0)
		FUNC1(FUNC0(skb)->rxe, RXE_CNT_COMPLETER_SCHED);

	FUNC2(&qp->comp.task, must_sched);
}