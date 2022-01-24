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
struct chtls_sock {struct sk_buff* wr_skb_tail; struct sk_buff* wr_skb_head; } ;
struct TYPE_2__ {struct sk_buff* next_wr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC2(struct chtls_sock *csk, struct sk_buff *skb)
{
	FUNC0(skb)->next_wr = NULL;

	FUNC1(skb);

	if (!csk->wr_skb_head)
		csk->wr_skb_head = skb;
	else
		FUNC0(csk->wr_skb_tail)->next_wr = skb;
	csk->wr_skb_tail = skb;
}