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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct udphdr {void* check; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct rxe_pkt_info {size_t opcode; int /*<<< orphan*/ * hdr; int /*<<< orphan*/  rxe; } ;
struct rxe_bth {int /*<<< orphan*/  qpn; } ;
struct ipv6hdr {int priority; int hop_limit; int /*<<< orphan*/  flow_lbl; } ;
struct iphdr {int ttl; int tos; void* check; } ;
struct TYPE_2__ {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTH_QPN_MASK ; 
 void* CSUM_MANGLED_0 ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int RXE_BTH_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* rxe_opcode ; 

u32 FUNC7(struct rxe_pkt_info *pkt, struct sk_buff *skb)
{
	unsigned int bth_offset = 0;
	struct iphdr *ip4h = NULL;
	struct ipv6hdr *ip6h = NULL;
	struct udphdr *udph;
	struct rxe_bth *bth;
	int crc;
	int length;
	int hdr_size = sizeof(struct udphdr) +
		(skb->protocol == FUNC1(ETH_P_IP) ?
		sizeof(struct iphdr) : sizeof(struct ipv6hdr));
	/* pseudo header buffer size is calculate using ipv6 header size since
	 * it is bigger than ipv4
	 */
	u8 pshdr[sizeof(struct udphdr) +
		sizeof(struct ipv6hdr) +
		RXE_BTH_BYTES];

	/* This seed is the result of computing a CRC with a seed of
	 * 0xfffffff and 8 bytes of 0xff representing a masked LRH.
	 */
	crc = 0xdebb20e3;

	if (skb->protocol == FUNC1(ETH_P_IP)) { /* IPv4 */
		FUNC4(pshdr, FUNC2(skb), hdr_size);
		ip4h = (struct iphdr *)pshdr;
		udph = (struct udphdr *)(ip4h + 1);

		ip4h->ttl = 0xff;
		ip4h->check = CSUM_MANGLED_0;
		ip4h->tos = 0xff;
	} else {				/* IPv6 */
		FUNC4(pshdr, FUNC3(skb), hdr_size);
		ip6h = (struct ipv6hdr *)pshdr;
		udph = (struct udphdr *)(ip6h + 1);

		FUNC5(ip6h->flow_lbl, 0xff, sizeof(ip6h->flow_lbl));
		ip6h->priority = 0xf;
		ip6h->hop_limit = 0xff;
	}
	udph->check = CSUM_MANGLED_0;

	bth_offset += hdr_size;

	FUNC4(&pshdr[bth_offset], pkt->hdr, RXE_BTH_BYTES);
	bth = (struct rxe_bth *)&pshdr[bth_offset];

	/* exclude bth.resv8a */
	bth->qpn |= FUNC0(~BTH_QPN_MASK);

	length = hdr_size + RXE_BTH_BYTES;
	crc = FUNC6(pkt->rxe, crc, pshdr, length);

	/* And finish to compute the CRC on the remainder of the headers. */
	crc = FUNC6(pkt->rxe, crc, pkt->hdr + RXE_BTH_BYTES,
			rxe_opcode[pkt->opcode].length - RXE_BTH_BYTES);
	return crc;
}