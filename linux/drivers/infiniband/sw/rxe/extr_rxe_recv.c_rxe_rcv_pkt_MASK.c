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
struct sk_buff {int dummy; } ;
struct rxe_pkt_info {int mask; int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int RXE_REQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC2(struct rxe_pkt_info *pkt, struct sk_buff *skb)
{
	if (pkt->mask & RXE_REQ_MASK)
		FUNC1(pkt->qp, skb);
	else
		FUNC0(pkt->qp, skb);
}