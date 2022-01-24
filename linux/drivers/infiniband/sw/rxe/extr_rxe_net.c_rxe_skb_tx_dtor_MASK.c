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
struct sock {struct rxe_qp* sk_user_data; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_2__ {int /*<<< orphan*/  task; } ;
struct rxe_qp {TYPE_1__ req; scalar_t__ need_req_skb; int /*<<< orphan*/  skb_out; } ;

/* Variables and functions */
 int RXE_INFLIGHT_SKBS_PER_QP_LOW ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb)
{
	struct sock *sk = skb->sk;
	struct rxe_qp *qp = sk->sk_user_data;
	int skb_out = FUNC0(&qp->skb_out);

	if (FUNC3(qp->need_req_skb &&
		     skb_out < RXE_INFLIGHT_SKBS_PER_QP_LOW))
		FUNC2(&qp->req.task, 1);

	FUNC1(qp);
}