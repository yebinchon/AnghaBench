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
struct sock {int /*<<< orphan*/  sk_allocation; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ TX_HEADER_LEN ; 
 int /*<<< orphan*/  ULPCB_FLAG_NEED_HDR ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct sock *sk, int size)
{
	struct sk_buff *skb;

	skb = FUNC0(size + TX_HEADER_LEN, sk->sk_allocation);
	if (FUNC1(skb)) {
		FUNC3(skb, TX_HEADER_LEN);
		FUNC2(sk, skb, ULPCB_FLAG_NEED_HDR);
		FUNC4(skb);
	}
	return skb;
}