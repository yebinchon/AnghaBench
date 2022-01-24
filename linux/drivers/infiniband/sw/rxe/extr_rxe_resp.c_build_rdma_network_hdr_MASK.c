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
union rdma_network_hdr {int /*<<< orphan*/  ibgrh; int /*<<< orphan*/  roce4grh; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct rxe_pkt_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 struct sk_buff* FUNC0 (struct rxe_pkt_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (union rdma_network_hdr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(union rdma_network_hdr *hdr,
				   struct rxe_pkt_info *pkt)
{
	struct sk_buff *skb = FUNC0(pkt);

	FUNC5(hdr, 0, sizeof(*hdr));
	if (skb->protocol == FUNC1(ETH_P_IP))
		FUNC4(&hdr->roce4grh, FUNC2(skb), sizeof(hdr->roce4grh));
	else if (skb->protocol == FUNC1(ETH_P_IPV6))
		FUNC4(&hdr->ibgrh, FUNC3(skb), sizeof(hdr->ibgrh));
}