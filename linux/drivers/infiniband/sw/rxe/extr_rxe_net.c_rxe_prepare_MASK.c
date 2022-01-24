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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ protocol; TYPE_1__* dev; } ;
struct rxe_pkt_info {int /*<<< orphan*/  mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmac; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  RXE_LOOPBACK_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rxe_pkt_info*,struct sk_buff*) ; 
 int FUNC3 (struct rxe_pkt_info*,struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct rxe_pkt_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct rxe_pkt_info*,struct sk_buff*) ; 

int FUNC6(struct rxe_pkt_info *pkt, struct sk_buff *skb, u32 *crc)
{
	int err = 0;

	if (skb->protocol == FUNC1(ETH_P_IP))
		err = FUNC2(pkt, skb);
	else if (skb->protocol == FUNC1(ETH_P_IPV6))
		err = FUNC3(pkt, skb);

	*crc = FUNC5(pkt, skb);

	if (FUNC0(skb->dev->dev_addr, FUNC4(pkt)->dmac))
		pkt->mask |= RXE_LOOPBACK_MASK;

	return err;
}