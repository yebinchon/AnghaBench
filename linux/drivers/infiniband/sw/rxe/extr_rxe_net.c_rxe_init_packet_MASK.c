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
struct udphdr {int dummy; } ;
struct sk_buff {void* protocol; struct net_device const* dev; } ;
struct rxe_pkt_info {int port_num; int /*<<< orphan*/  mask; int /*<<< orphan*/  hdr; struct rxe_dev* rxe; } ;
struct rxe_dev {int /*<<< orphan*/  ib_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  sgid_index; } ;
struct rxe_av {scalar_t__ network_type; TYPE_1__ grh; } ;
typedef  struct net_device const net_device ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
typedef  struct net_device ib_gid_attr ;

/* Variables and functions */
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct net_device const*) ; 
 scalar_t__ FUNC1 (struct net_device const*) ; 
 scalar_t__ RDMA_NETWORK_IPV4 ; 
 int /*<<< orphan*/  RXE_GRH_MASK ; 
 struct sk_buff* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct net_device* FUNC6 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device const*) ; 
 struct net_device* FUNC8 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 

struct sk_buff *FUNC12(struct rxe_dev *rxe, struct rxe_av *av,
				int paylen, struct rxe_pkt_info *pkt)
{
	unsigned int hdr_len;
	struct sk_buff *skb = NULL;
	struct net_device *ndev;
	const struct ib_gid_attr *attr;
	const int port_num = 1;

	attr = FUNC6(&rxe->ib_dev, port_num, av->grh.sgid_index);
	if (FUNC0(attr))
		return NULL;

	if (av->network_type == RDMA_NETWORK_IPV4)
		hdr_len = ETH_HLEN + sizeof(struct udphdr) +
			sizeof(struct iphdr);
	else
		hdr_len = ETH_HLEN + sizeof(struct udphdr) +
			sizeof(struct ipv6hdr);

	FUNC4();
	ndev = FUNC8(attr);
	if (FUNC0(ndev)) {
		FUNC5();
		goto out;
	}
	skb = FUNC2(paylen + hdr_len + FUNC1(ndev),
			GFP_ATOMIC);

	if (FUNC11(!skb)) {
		FUNC5();
		goto out;
	}

	FUNC10(skb, hdr_len + FUNC1(ndev));

	/* FIXME: hold reference to this netdev until life of this skb. */
	skb->dev	= ndev;
	FUNC5();

	if (av->network_type == RDMA_NETWORK_IPV4)
		skb->protocol = FUNC3(ETH_P_IP);
	else
		skb->protocol = FUNC3(ETH_P_IPV6);

	pkt->rxe	= rxe;
	pkt->port_num	= port_num;
	pkt->hdr	= FUNC9(skb, paylen);
	pkt->mask	|= RXE_GRH_MASK;

out:
	FUNC7(attr);
	return skb;
}