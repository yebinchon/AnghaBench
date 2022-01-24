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
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* backlog_rcv ) (struct sock*,struct sk_buff*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, struct sk_buff *skb)
{
	if (skb->protocol) {
		FUNC1(skb);
		return 0;
	}
	FUNC0(skb)->backlog_rcv(sk, skb);
	return 0;
}