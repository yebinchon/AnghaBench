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
typedef  int /*<<< orphan*/  u8 ;
struct udphdr {int /*<<< orphan*/  len; } ;
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct rxe_pkt_info {int port_num; scalar_t__ paylen; int /*<<< orphan*/  mask; int /*<<< orphan*/ * hdr; struct rxe_dev* rxe; } ;
struct rxe_dev {int /*<<< orphan*/  ib_dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXE_GRH_MASK ; 
 struct rxe_pkt_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct rxe_dev* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 struct udphdr* FUNC9 (struct sk_buff*) ; 
 struct net_device* FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sk_buff *skb)
{
	struct udphdr *udph;
	struct net_device *ndev = skb->dev;
	struct net_device *rdev = ndev;
	struct rxe_dev *rxe = FUNC6(ndev);
	struct rxe_pkt_info *pkt = FUNC0(skb);

	if (!rxe && FUNC3(rdev)) {
		rdev = FUNC10(ndev);
		rxe = FUNC6(rdev);
	}
	if (!rxe)
		goto drop;

	if (FUNC8(skb)) {
		FUNC5("skb_linearize failed\n");
		FUNC2(&rxe->ib_dev);
		goto drop;
	}

	udph = FUNC9(skb);
	pkt->rxe = rxe;
	pkt->port_num = 1;
	pkt->hdr = (u8 *)(udph + 1);
	pkt->mask = RXE_GRH_MASK;
	pkt->paylen = FUNC1(udph->len) - sizeof(*udph);

	FUNC7(skb);

	/*
	 * FIXME: this is in the wrong place, it needs to be done when pkt is
	 * destroyed
	 */
	FUNC2(&rxe->ib_dev);

	return 0;
drop:
	FUNC4(skb);

	return 0;
}