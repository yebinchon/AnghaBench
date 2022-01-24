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
struct TYPE_2__ {scalar_t__ state; scalar_t__ res; } ;
struct rxe_qp {TYPE_1__ resp; int /*<<< orphan*/  req_pkts; } ;
struct rxe_pkt_info {int dummy; } ;
typedef  enum resp_states { ____Placeholder_resp_states } resp_states ;

/* Variables and functions */
 scalar_t__ QP_STATE_ERROR ; 
 int RESPST_CHK_PSN ; 
 int RESPST_CHK_RESOURCE ; 
 int RESPST_EXIT ; 
 int RESPST_READ_REPLY ; 
 struct rxe_pkt_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_qp*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline enum resp_states FUNC5(struct rxe_qp *qp,
				       struct rxe_pkt_info **pkt_p)
{
	struct sk_buff *skb;

	if (qp->resp.state == QP_STATE_ERROR) {
		while ((skb = FUNC3(&qp->req_pkts))) {
			FUNC2(qp);
			FUNC1(skb);
		}

		/* go drain recv wr queue */
		return RESPST_CHK_RESOURCE;
	}

	skb = FUNC4(&qp->req_pkts);
	if (!skb)
		return RESPST_EXIT;

	*pkt_p = FUNC0(skb);

	return (qp->resp.res) ? RESPST_READ_REPLY : RESPST_CHK_PSN;
}