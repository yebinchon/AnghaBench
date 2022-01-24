#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  sk; int /*<<< orphan*/  destructor; } ;
struct rxe_pkt_info {TYPE_3__* qp; } ;
struct TYPE_7__ {int /*<<< orphan*/  skb_out; TYPE_1__* sk; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  rxe_skb_tx_dtor ; 
 TYPE_2__* FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct rxe_pkt_info *pkt, struct sk_buff *skb)
{
	int err;

	skb->destructor = rxe_skb_tx_dtor;
	skb->sk = pkt->qp->sk->sk;

	FUNC10(pkt->qp);
	FUNC1(&pkt->qp->skb_out);

	if (skb->protocol == FUNC3(ETH_P_IP)) {
		err = FUNC5(FUNC2(FUNC12(skb)->dev), skb->sk, skb);
	} else if (skb->protocol == FUNC3(ETH_P_IPV6)) {
		err = FUNC4(FUNC2(FUNC12(skb)->dev), skb->sk, skb);
	} else {
		FUNC9("Unknown layer 3 protocol: %d\n", skb->protocol);
		FUNC0(&pkt->qp->skb_out);
		FUNC11(pkt->qp);
		FUNC6(skb);
		return -EINVAL;
	}

	if (FUNC13(FUNC7(err))) {
		FUNC8("error sending packet: %d\n", err);
		return -EAGAIN;
	}

	return 0;
}