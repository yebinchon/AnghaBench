#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct rxe_qp {int /*<<< orphan*/  src_port; } ;
struct rxe_pkt_info {struct rxe_qp* qp; } ;
struct TYPE_10__ {int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  traffic_class; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {struct in_addr sin_addr; } ;
struct TYPE_9__ {TYPE_3__ _sockaddr_in; } ;
struct TYPE_6__ {struct in_addr sin_addr; } ;
struct TYPE_7__ {TYPE_1__ _sockaddr_in; } ;
struct rxe_av {TYPE_5__ grh; TYPE_4__ dgid_addr; TYPE_2__ sgid_addr; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_DF ; 
 int /*<<< orphan*/  ROCE_V2_UDP_DPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC6 (int /*<<< orphan*/ ,struct rxe_qp*,struct rxe_av*) ; 
 struct rxe_av* FUNC7 (struct rxe_pkt_info*) ; 

__attribute__((used)) static int FUNC8(struct rxe_pkt_info *pkt, struct sk_buff *skb)
{
	struct rxe_qp *qp = pkt->qp;
	struct dst_entry *dst;
	bool xnet = false;
	__be16 df = FUNC2(IP_DF);
	struct rxe_av *av = FUNC7(pkt);
	struct in_addr *saddr = &av->sgid_addr._sockaddr_in.sin_addr;
	struct in_addr *daddr = &av->dgid_addr._sockaddr_in.sin_addr;

	dst = FUNC6(skb->dev, qp, av);
	if (!dst) {
		FUNC3("Host not reachable\n");
		return -EHOSTUNREACH;
	}

	FUNC5(skb, FUNC0(qp->src_port),
			FUNC0(ROCE_V2_UDP_DPORT));

	FUNC4(dst, skb, saddr->s_addr, daddr->s_addr, IPPROTO_UDP,
			 av->grh.traffic_class, av->grh.hop_limit, df, xnet);

	FUNC1(dst);
	return 0;
}